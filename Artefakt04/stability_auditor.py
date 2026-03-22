import glob
import json
import os
import xml.etree.ElementTree as ET
from collections import Counter

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"


def audit_stability(path: str) -> dict:
    class_counter = Counter()
    file_stats = {}

    xml_files = glob.glob(os.path.join(path, "**", "*.xml"), recursive=True)

    for file_path in xml_files:
        try:
            tree = ET.parse(file_path)
        except ET.ParseError:
            continue

        local_counter = Counter()

        for elem in tree.iter():
            class_name = elem.tag
            class_counter[class_name] += 1
            local_counter[class_name] += 1

        file_stats[file_path] = dict(local_counter)

    total_views = sum(class_counter.values())
    if total_views == 0:
        return {
            "total_views": 0,
            "dominant_class": None,
            "dominant_count": 0,
            "cdi": 0.0,
            "verdict": "NO_DATA",
            "message": "No UI components found in provided layouts.",
            "class_distribution": {},
            "files": file_stats,
        }

    dominant_class, dominant_count = class_counter.most_common(1)[0]
    cdi = dominant_count / total_views

    if cdi < 0.40:
        verdict = "SAFE"
        message = "Class distribution is balanced. By.className is relatively low risk."
    elif cdi < 0.70:
        verdict = "RISKY"
        message = "One class is noticeably dominant. By.className may produce false positives."
    else:
        verdict = "UNSAFE"
        message = "One class dominates the UI. Avoid By.className for stable automation."

    return {
        "total_views": total_views,
        "dominant_class": dominant_class,
        "dominant_count": dominant_count,
        "cdi": round(cdi, 4),
        "verdict": verdict,
        "message": message,
        "class_distribution": dict(class_counter.most_common()),
        "files": file_stats,
    }


def save_report(report: dict, output_file: str = "stability_report.json") -> None:
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(report, f, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    layout_path = "../Artefakt02/decompiled_apk/res/layout"
    report = audit_stability(layout_path)
    save_report(report)

    print(f"[OK] Total views: {report['total_views']}")
    print(f"[OK] Dominant class: {report['dominant_class']}")
    print(f"[OK] CDI: {report['cdi']}")
    print(f"[OK] Verdict: {report['verdict']}")
    print("[OK] Report saved to stability_report.json")