import json
import xml.etree.ElementTree as ET
from pathlib import Path

CAPS_PATH = Path("51_caps.json")
SELECTORS_PATH = Path("53_selectors.json")
OUTPUT_PATH = Path("55_result.xml")


def load_json(path: Path):
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def main():
    try:
        caps_data = load_json(CAPS_PATH)
    except FileNotFoundError:
        print(f"[ERROR] Brak pliku: {CAPS_PATH}")
        return
    except json.JSONDecodeError as e:
        print(f"[ERROR] Niepoprawny JSON w {CAPS_PATH}: {e}")
        return

    try:
        ui_map = load_json(SELECTORS_PATH)
    except FileNotFoundError:
        print(f"[ERROR] Brak pliku: {SELECTORS_PATH}")
        return
    except json.JSONDecodeError as e:
        print(f"[ERROR] Niepoprawny JSON w {SELECTORS_PATH}: {e}")
        return

    current_pkg = caps_data.get("appPackage") or caps_data.get("appium:appPackage") or ""
    current_act = caps_data.get("appActivity") or caps_data.get("appium:appActivity") or ""
    selectors = ui_map.get("selectors", {})

    feedback_report = []

    # 1. Weryfikacja Pakietu
    if current_pkg == "io.appium.android.apis":
        feedback_report.append({
            "feature": "Identyfikacja Aplikacji",
            "status": "ZGODNY",
            "message": f"Pakiet {current_pkg} poprawnie zmapowany."
        })
    else:
        feedback_report.append({
            "feature": "Identyfikacja Aplikacji",
            "status": "DO POPRAWY",
            "message": f"Niezgodność pakietu. Wykryto {current_pkg}, sprawdź konfigurację manifestu."
        })

    # 2. Weryfikacja Dostępności Elementów
    target_element = "ACCESSIBILITY"

    if target_element in selectors:
        feedback_report.append({
            "feature": "Dostępność UI",
            "status": "ZGODNY",
            "message": f"Element '{target_element}' jest dostępny w layoutach."
        })
    else:
        available = list(selectors.keys())[:3]
        feedback_report.append({
            "feature": "Dostępność UI",
            "status": "INFORMACJA",
            "message": (
                f"Nie odnaleziono ID '{target_element}'. "
                f"Sugestia: Zweryfikuj czy element nie zmienił nazwy na jedną z dostępnych: {available}."
            )
        })

    # Generowanie XML
    root = ET.Element("testReport")
    summary = ET.SubElement(root, "summary")
    ET.SubElement(summary, "appPackage").text = current_pkg
    ET.SubElement(summary, "appActivity").text = current_act
    ET.SubElement(summary, "uiElements").text = str(len(selectors))

    details = ET.SubElement(root, "details")

    for item in feedback_report:
        feature_el = ET.SubElement(details, "feature")
        ET.SubElement(feature_el, "name").text = item["feature"]
        ET.SubElement(feature_el, "status").text = item["status"]
        ET.SubElement(feature_el, "message").text = item["message"]

    footer = ET.SubElement(root, "footer")
    ET.SubElement(footer, "result").text = "55_result.xml"
    ET.SubElement(footer, "status").text = "generated"

    tree = ET.ElementTree(root)
    tree.write(OUTPUT_PATH, encoding="utf-8", xml_declaration=True)

    # Змінений вивід у консоль для ідеального скріншоту
    print(">>> ZADANIE 5.5: GENEROWANIE RAPORTU FEEDBACKU DLA DEWELOPERA <<<<<<")
    print("FEEDBACK DLA TWÓRCÓW APLIKACJI")
    for item in feedback_report:
        print(f"[{item['status']}] {item['feature']}: {item['message']}")
    print(f"[INFO] Blok 5 zakończony. Raport opisowy gotowy: {OUTPUT_PATH}")


if __name__ == "__main__":
    main()