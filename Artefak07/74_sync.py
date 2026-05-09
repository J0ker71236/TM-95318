import sys
import os
import time

# Połączenie z bazą POM
sys.path.append(os.path.abspath("../Artefakt06"))
from MainPage import MainPage


class SyncManager(MainPage):
    """
    MODUŁ SYNCHRONIZACJI (Layer 4): Inteligentne czekanie na UI.
    """

    def wait_for_element_and_click(self, business_key, timeout=10):
        """
        Symulacja profesjonalnego Explicit Wait (WebDriverWait).
        """
        # Bezpieczne pobieranie klucza z mapy (dostosowane do Twojego BasePage)
        selector = getattr(self, 'selectors', {}).get(business_key)
        if not selector and hasattr(self, 'find_id'):
            selector = self.find_id(business_key)

        if not selector:
            return f"BŁĄD: Brak klucza '{business_key}' w mapie!"

        print(f"[SYNC] Rozpoczynam oczekiwanie na: {selector} (max {timeout}s)")

        # Symulacja pętli sprawdzającej obecność elementu (Polling)
        start_time = time.time()

        # W rzeczywistym Appium:
        # element = WebDriverWait(driver, timeout).until(EC.presence_of_element_located(...))
        time.sleep(1.5)  # Symulacja opóźnienia ładowania aplikacji UI

        end_time = time.time()
        duration = round(end_time - start_time, 2)

        return f"SUKCES: Element '{business_key}' odnaleziony i kliknięty po {duration}s."


if __name__ == "__main__":
    sm = SyncManager()
    print(">>> ZADANIE 7.4: TESTY SYNCHRONIZACJI DYNAMICZNEJ <<<")
    print("-" * 55)

    # Test 1: Sukces (pozytywny scenariusz)
    # Wykorzystujemy klucz "ADD" z Twojego pliku JSON
    print(sm.wait_for_element_and_click("ADD", timeout=10))

    # Test 2: Błąd (negatywny scenariusz - brak elementu)
    print(sm.wait_for_element_and_click("NON_EXISTENT_BUTTON", timeout=10))

    print("-" * 55)