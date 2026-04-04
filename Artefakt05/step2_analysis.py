import xml.etree.ElementTree as ET
from pathlib import Path

MANIFEST_PATH = Path("../Artefakt02/decompiled_apk/AndroidManifest.xml")
LOG_PATH = Path("52_inspection.log")

ANDROID_NS = "http://schemas.android.com/apk/res/android"
NS = {"android": ANDROID_NS}


def get_android_attr(element, attr_name):
    return element.get(f"{{{ANDROID_NS}}}{attr_name}")


def find_launcher_activity(root):
    for component_tag in ("activity", "activity-alias"):
        for item in root.findall(f".//{component_tag}"):
            for intent_filter in item.findall("intent-filter"):
                has_main = intent_filter.find(
                    "action[@android:name='android.intent.action.MAIN']",
                    NS
                ) is not None
                has_launcher = intent_filter.find(
                    "category[@android:name='android.intent.category.LAUNCHER']",
                    NS
                ) is not None

                if has_main and has_launcher:
                    return get_android_attr(item, "name") or ""
    return ""


def collect_permissions(root):
    permissions = []
    for perm in root.findall("uses-permission"):
        name = get_android_attr(perm, "name")
        if name:
            permissions.append(name)
    return permissions


def count_activities(root):
    return len(root.findall(".//activity"))


def main():
    try:
        tree = ET.parse(MANIFEST_PATH)
        root = tree.getroot()
    except FileNotFoundError:
        print(f"[ERROR] Nie znaleziono pliku: {MANIFEST_PATH}")
        return
    except ET.ParseError as e:
        print(f"[ERROR] Błąd parsowania XML: {e}")
        return

    package_name = root.attrib.get("package", "")
    activity_count = count_activities(root)
    permissions = collect_permissions(root)

    report_lines = [
        ">>> ZADANIE 5.2: ANALIZA MANIFESTU (POŁĄCZENIE Z ARTEFAKTEM 02) <<<<<<<<",
        "ARTEFAKT 5.2: RAPORT ANALIZY SYSTEMOWEJ",
        f"Pakiet główny: {package_name}",
        f"Liczba Activity: {activity_count}",
        "",
        "Kluczowe Uprawnienia (Co aplikacja chce robić?):",
    ]

    if permissions:
        report_lines.extend(f"- {perm}" for perm in permissions)
    else:
        report_lines.append("- Brak")

    report_text = "\n".join(report_lines)

    print(report_text)
    print(f"\n[OK] Sukces! Artefakt zapisany jako: {LOG_PATH}")

    file_content = "\n".join(report_lines[1:])
    LOG_PATH.write_text(file_content, encoding="utf-8")


if __name__ == "__main__":
    main()