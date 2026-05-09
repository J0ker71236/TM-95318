import xml.etree.ElementTree as ET
import os
from xml.dom import minidom


def save_pretty_xml(element, filename):
    """
    Pomocnicza funkcja do zapisu sformatowanego XML z wcięciami (Pretty Print).
    Zamienia surowy ciąg XML na czytelną strukturę drzewiastą.
    """
    raw_string = ET.tostring(element, 'utf-8')
    reparsed = minidom.parseString(raw_string)
    # indent="  " dodaje dwa znaki spacji jako wcięcie
    pretty_xml = reparsed.toprettyxml(indent="  ")

    with open(filename, "w", encoding="utf-8") as f:
        f.write(pretty_xml)
    print(f"[SUCCESS] Wygenerowano czytelny raport: {filename}")


def scan_manifest_for_risks(input_path="../Artefakt02/decompiled_apk/AndroidManifest.xml"):
    """
    Parser inżynierski: Automatycznie wyodrębnia krytyczne flagi bezpieczeństwa
    oraz niebezpieczne uprawnienia z oryginalnego Manifestu Androida.
    """
    print(f">>> URUCHAMIANIE AUDYTU: {input_path} <<<")

    if not os.path.exists(input_path):
        print(f"BŁĄD KRYTYCZNY: Nie znaleziono pliku manifestu w: {input_path}")
        print("Upewnij się, że Blok 2 (Dekompilacja) został wykonany poprawnie.")
        return

    try:
        # Inicjalizacja drzewa XML
        tree = ET.parse(input_path)
        root = tree.getroot()

        # Kolektory danych na potrzeby audytu
        risky_permissions = []
        is_debuggable = "false"

        # 1. SZUKANIE NIEBEZPIECZNYCH UPRAWNIEŃ (Permissions)
        # Lista kontrolna uprawnień uznawanych przez Google/OWASP za 'Dangerous'
        dangerous_list = [
            'READ_CONTACTS',
            'WRITE_EXTERNAL_STORAGE',
            'ACCESS_FINE_LOCATION',
            'INTERNET',
            'CAMERA',
            'RECORD_AUDIO'
        ]
        for perm in root.findall('uses-permission'):
            # Wyciągamy atrybut name z przestrzeni nazw Androida
            name = perm.get('{http://schemas.android.com/apk/res/android}name')
            if name:
                # Sprawdzamy czy końcówka uprawnienia (np. INTERNET) jest na naszej czarnej liście
                short_name = name.split('.')[-1]
                if short_name in dangerous_list:
                    risky_permissions.append(name)

        # 2. SZUKANIE FLAGI DEBUGGABLE W SEKTCJI APPLICATION
        application = root.find('application')
        if application is not None:
            # Pobieramy flagę debuggable, jeśli nie ma - zakładamy 'false' (bezpiecznie)
            is_debuggable = application.get('{http://schemas.android.com/apk/res/android}debuggable', 'false')

        # 3. BUDOWANIE NOWEJ STRUKTURY XML (RAPORT TECHNICZNY)
        risky_root = ET.Element("SecurityAudit")
        risky_root.set("app", "ApiDemos_Security_Check")
        risky_root.set("status", "ReviewRequired")

        # Sekcja flag systemowych
        flags = ET.SubElement(risky_root, "Flags")
        ET.SubElement(flags, "Debuggable").text = is_debuggable

        # Sekcja uprawnień
        perms_node = ET.SubElement(risky_root, "RiskyPermissions")
        for p in risky_permissions:
            ET.SubElement(perms_node, "Permission").text = p

        # 4. ZAPIS FORMATOWANEGO WYNIKU
        save_pretty_xml(risky_root, "RiskyPermission.xml")

        print(f"[INFO] Znaleziono {len(risky_permissions)} podejrzanych uprawnień.")
        if is_debuggable == "true":
            print("[⚠️ ALERT] Wykryto aktywną flagę DEBUGGABLE!")

    except Exception as e:
        print(f"BŁĄD PODCZAS PARSOWANIA: {e}")


if __name__ == "__main__":
    scan_manifest_for_risks()

