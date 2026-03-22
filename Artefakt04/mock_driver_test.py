import os
from datetime import datetime


def run_mock_integration_test():
    print("=== URUCHAMIAM TEST INTEGRACYJNY (PYTHON MOCK DRIVER) ===")

    verification_file = os.path.join(".", "xpath_verification.txt")
    log_file = os.path.join(".", "test_execution.log")

    if not os.path.exists(verification_file):
        print("[BŁĄD] Nie znaleziono pliku xpath_verification.txt")
        print("Wróć do punktu 4.3 i uruchom selector_game.py.")
        with open(log_file, "w", encoding="utf-8") as log:
            log.write("FINAL TEST RESULT: FAILED\n")
            log.write(f"TIMESTAMP: {datetime.now()}\n")
            log.write("REASON: brak pliku xpath_verification.txt\n")
        return

    with open(verification_file, "r", encoding="utf-8") as f:
        content = f.read()

    if "STATUS: ZALICZONE" in content:
        print("[PASS] Selektor zweryfikowany pozytywnie.")
        print("[INFO] Mock Driver: Nawiązywanie połączenia...")
        print("[INFO] Mock Driver: Element znaleziony z czasem 12ms...")
        print("[INFO] Mock Driver: Akcja 'click' wykonana pomyślnie.")

        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        with open(log_file, "w", encoding="utf-8") as log:
            log.write("FINAL TEST RESULT: PASSED\n")
            log.write(f"TIMESTAMP: {timestamp}\n")
            log.write("VALIDATED DATA:\n")
            log.write(content)

        print("\n" + "=" * 40)
        print(">>> WYNIK KONCOWY BLOCZKA 4: PASS <<<")
        print("=" * 40)
    else:
        print("[FAIL] Twój selektor nie jest unikalny lub nie przeszedł walidacji.")
        with open(log_file, "w", encoding="utf-8") as log:
            log.write("FINAL TEST RESULT: FAILED\n")
            log.write(f"TIMESTAMP: {datetime.now()}\n")
            log.write("REASON: selektor niezaliczony\n")


if __name__ == "__main__":
    run_mock_integration_test()