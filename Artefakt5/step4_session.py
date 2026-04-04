import json
from pathlib import Path


CAPS_PATH = Path("51_caps.json")
SELECTORS_PATH = Path("53_selectors.json")
OUTPUT_PATH = Path("54_session.log")


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

    app_pkg = caps_data.get("appPackage") or caps_data.get("appium:appPackage")
    app_act = caps_data.get("appActivity") or caps_data.get("appium:appActivity")
    dev_name = caps_data.get("deviceName") or caps_data.get("appium:deviceName")

    selectors = ui_map.get("selectors", {})
    ui_count = len(selectors)

    if not app_pkg or not app_act:
        status_msg = "FAILED: Missing appPackage or appActivity in JSON!"
        color = "\033[91m"  # Red
    else:
        status_msg = "READY TO CONNECT"
        color = "\033[92m"  # Green

    report_lines = [
        ">>> ZADANIE 5.4: INTEGRACJA ARTEFAKTÓW (STABLE BUILD) <<<",
        "=== ARTEFAKT 5.4: SESSION READINESS REPORT ===",
        f"Target App   : {app_pkg if app_pkg else 'N/A'}",
        f"Main Activity : {app_act if app_act else 'N/A'}",
        f"Device       : {dev_name if dev_name else 'N/A'}",
        f"UI Elements  : {ui_count} loaded",
        f"Status       : {status_msg}",
        "",
        "Sample selectors:",
    ]

    if selectors:
        for key in list(selectors.keys())[:10]:
            report_lines.append(f"- {key} -> {selectors[key]}")
    else:
        report_lines.append("- No selectors loaded")

    OUTPUT_PATH.write_text("\n".join(report_lines), encoding="utf-8")

    print("\n".join(report_lines))
    print(f"{color}[OK] Raport zapisany jako: {OUTPUT_PATH}\033[0m")


if __name__ == "__main__":
    main()