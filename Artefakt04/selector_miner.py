import glob
import json
import os
import xml.etree.ElementTree as ET


ANDROID_ID_ATTR = "{http://schemas.android.com/apk/res/android}id"


def mine_selectors(path: str) -> list[dict[str, str]]:
    report: list[dict[str, str]] = []

    for file_path in glob.glob(os.path.join(path, "**", "*.xml"), recursive=True):
        try:
            tree = ET.parse(file_path)
        except ET.ParseError as exc:
            print(f"[WARN] Skipping invalid XML: {file_path} ({exc})")
            continue

        for elem in tree.iter():
            res_id = elem.get(ANDROID_ID_ATTR)
            if res_id:
                clean_id = res_id.split("/")[-1]
                report.append(
                    {
                        "file": file_path,
                        "id": clean_id,
                        "raw_id": res_id,
                        "tag": elem.tag,
                    }
                )

    return report


def save_report(report: list[dict[str, str]], output_file: str = "miner_report.json") -> None:
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(report, f, ensure_ascii=False, indent=2)


if __name__ == "__main__":
    layout_path = "../Artefakt02/decompiled_apk/res/layout"
    selectors = mine_selectors(layout_path)
    save_report(selectors)

    print(f"[OK] Extracted {len(selectors)} IDs")
    print("[OK] Report saved to miner_report.json")