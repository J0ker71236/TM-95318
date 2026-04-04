import json
import os
import re
import xml.etree.ElementTree as ET
from pathlib import Path


LAYOUT_DIR = Path("../Artefakt02/decompiled_apk/res/layout")
OUTPUT_FILE = Path("53_selectors.json")

ANDROID_NS = "http://schemas.android.com/apk/res/android"
ID_ATTR = f"{{{ANDROID_NS}}}id"


def clean_android_id(raw_id: str) -> str:
    """
    Converts:
        @+id/login_btn -> login_btn
        @id/txt_01     -> txt_01
        @android:id/foo -> foo
    """
    if not raw_id:
        return ""

    value = raw_id.strip()
    value = value.split("/")[-1]
    value = re.sub(r"^[^/]+/", "", value)
    return value


def business_name_from_id(clean_id: str) -> str:
    """
    Converts technical id to a test-friendly selector name.
    Examples:
        login_btn -> LOGIN_BTN
        txt_01     -> TXT_01
        btn-login  -> BTN_LOGIN
    """
    name = clean_id.upper()
    name = re.sub(r"[^A-Z0-9_]+", "_", name)
    name = re.sub(r"_+", "_", name).strip("_")
    return name


def main():
    ui_map = {
        "selectors": {}
    }

    if not LAYOUT_DIR.exists():
        print(f"[ERROR] Nie znaleziono katalogu: {LAYOUT_DIR}")
        return

    seen_ids = set()

    for file_name in os.listdir(LAYOUT_DIR):
        if not file_name.endswith(".xml"):
            continue

        file_path = LAYOUT_DIR / file_name

        try:
            tree = ET.parse(file_path)
            root = tree.getroot()

            for element in root.iter():
                res_id = element.attrib.get(ID_ATTR)
                if res_id:
                    clean_id = clean_android_id(res_id)
                    if clean_id and clean_id not in seen_ids:
                        seen_ids.add(clean_id)
                        business_name = business_name_from_id(clean_id)
                        ui_map["selectors"][business_name] = clean_id

        except ET.ParseError:
            continue
        except Exception:
            continue

    with OUTPUT_FILE.open("w", encoding="utf-8") as f:
        json.dump(ui_map, f, ensure_ascii=False, indent=2)

    print(">>> ZADANIE 5.3: BUDOWA MAPY SELEKTORÓW (UI MAPPING) <<<")
    print(f"[OK] Zmapowano {len(ui_map['selectors'])} unikalnych elementów UI.")
    print(f"Artefakt zapisany jako: {OUTPUT_FILE}")


if __name__ == "__main__":
    main()