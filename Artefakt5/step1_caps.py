import json
import xml.etree.ElementTree as ET


def main():
    # Оновлений шлях згідно з інструкцією PDF
    manifest_path = "../Artefakt02/decompiled_apk/AndroidManifest.xml"

    ns = {
        "android": "http://schemas.android.com/apk/res/android"
    }

    try:
        tree = ET.parse(manifest_path)
        root = tree.getroot()
    except FileNotFoundError:
        print(f"Error - {manifest_path}")
        return

    package_name = root.attrib.get("package")

    main_activity = ""
    for activity in root.findall(".//activity"):
        intent_filter = activity.find(".//intent-filter")
        if intent_filter is not None:
            action = intent_filter.find(".//action[@android:name='android.intent.action.MAIN']", ns)
            if action is not None:
                main_activity = activity.get(f"{{{ns['android']}}}name")
                break

    capabilities = {
        "platformName": "Android",
        "automationName": "UiAutomator2",
        "appPackage": package_name,
        "appActivity": main_activity,
        "deviceName": "emulator-5554",
        "noReset": True
    }

    with open("51_caps.json", "w", encoding="utf-8") as f:
        json.dump(capabilities, f, ensure_ascii=False, indent=2)

    print(f"Sukces! Wykryto: {package_name} / {main_activity}")

if __name__ == "__main__":
    main()