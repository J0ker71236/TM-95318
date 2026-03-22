import glob
import json
import os
import xml.etree.ElementTree as ET

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"
TEXT_ATTR = f"{ANDROID_NS}text"
CONTENT_DESC_ATTR = f"{ANDROID_NS}contentDescription"
ID_ATTR = f"{ANDROID_NS}id"


def analyze_a11y(layout_path: str) -> list[dict]:
    issues = []

    search_pattern = os.path.join(layout_path, "**", "*.xml")

    for file_path in glob.glob(search_pattern, recursive=True):
        try:
            tree = ET.parse(file_path)
        except ET.ParseError:
            continue
        except FileNotFoundError:
            continue

        for elem in tree.iter():
            node_text = elem.get(TEXT_ATTR)
            node_desc = elem.get(CONTENT_DESC_ATTR)
            node_id = elem.get(ID_ATTR)

            if node_text and not node_desc:
                issues.append(
                    {
                        "file": os.path.basename(file_path),
                        "full_path": file_path,
                        "tag": elem.tag,
                        "id": node_id.split("/")[-1] if node_id else "no-id",
                        "text": node_text,
                        "issue": "Brak atrybutu contentDescription",
                    }
                )

    return issues


def save_report(issues: list[dict], output_file: str = "a11y_report.json") -> None:
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(issues, f, ensure_ascii=False, indent=2)


if __name__ == "__main__":
    layout_path = "../Artefakt02/decompiled_apk/res/layout"
    report = analyze_a11y(layout_path)
    save_report(report)

    print(f"[OK] Found {len(report)} accessibility gaps")
    print("[OK] Report saved to a11y_report.json")