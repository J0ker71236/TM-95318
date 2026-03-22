import xml.etree.ElementTree as ET
import glob
import os

ANDROID_ID = "{http://schemas.android.com/apk/res/android}id"


def run_game():
    print("=== INTERAKTYWNY KREATOR SELEKTORÓW ===")
    target_id = input("1. Podaj wartość 'id' z raportu: ").strip()
    target_tag = input("2. Podaj wartość 'tag' z raportu [np. RadioButton]: ").strip()

    if not target_id or not target_tag:
        print(">>> STATUS: BŁĄD! Musisz podać zarówno ID, jak i TAG.")
        return

    matches = 0
    matched_files = []

    base_path = "../Artefakt02/decompiled_apk/res/layout"
    search_pattern = os.path.join(base_path, "**", "*.xml")

    for file in glob.glob(search_pattern, recursive=True):
        try:
            tree = ET.parse(file)
        except ET.ParseError:
            continue
        except FileNotFoundError:
            continue

        for elem in tree.iter():
            node_id = elem.get(ANDROID_ID)
            node_tag = elem.tag

            if node_id:
                clean_id = node_id.split("/")[-1]

                if clean_id == target_id and node_tag == target_tag:
                    matches += 1
                    matched_files.append(file)

    if matches == 1:
        print(">>> STATUS: ZALICZONE! Twój selektor jest unikalny.")
        print(f">>> MATCH: {matched_files[0]}")

        with open("xpath_verification.txt", "w", encoding="utf-8") as f:
            f.write(
                "PROJEKT SELEKTORA:\n"
                f"ID: {target_id}\n"
                f"TAG: {target_tag}\n"
                "STATUS: ZALICZONE\n"
            )

    elif matches == 0:
        print(">>> STATUS: BŁĄD! Nie znaleziono elementu o podanym ID i TAG.")
    else:
        print(f">>> STATUS: BŁĄD! Selektor nie jest unikalny. Liczba dopasowań: {matches}")
        for f in matched_files:
            print(f" - {f}")


if __name__ == "__main__":
    run_game()