import sys
import os
import time

# DODANIE ŚCIEŻKI DO MODUŁÓW Z BLOKU 06
# To pozwala na współdzielenie kodu między folderami artefaktów
sys.path.append(os.path.abspath("../Artefakt06"))

try:
    from MainPage import MainPage
except ImportError:
    print("BŁĄD: Nie znaleziono MainPage.py w ../Artefakt06/")
    sys.exit(1)


class GestureAutomator(MainPage):
    """
    MODUŁ GESTÓW (Layer 4): Rozszerzenie Page Objectu o fizykę dotyku.
    """

    def scroll_down_logic(self, start_y=0.8, end_y=0.2, duration_ms=1000):
        """
        Symulacja gestu SCROLL DOWN (procentowo).
        """
        print(f"[GESTURE] Start Swipe: Y={start_y} -> End Y={end_y} (t={duration_ms}ms)")

        if duration_ms < 200:
            return "BŁĄD: Gest zbyt szybki - grozi brakiem reakcji UI (Flick)."

        return f"SUKCES: Przewinięto listę o {int((start_y - end_y) * 100)}% wysokości ekranu."

    def long_press_element(self, element_key):
        """
        Symulacja Long Press na Resource ID.
        """
        # find_id dziedziczymy z BasePage przez MainPage
        selector = self.selectors.get(element_key)
        if selector:
            return f"SUKCES: Wykonano LONG PRESS (2s) na elemencie: {selector}"
        return f"BŁĄD: Nie odnaleziono elementu {element_key} w mapie selektorów."


if __name__ == "__main__":
    # Inicjalizacja (pamiętaj, że BasePage w 06 szuka JSON-a w ../Artefakt05/)
    ga = GestureAutomator()
    print(">>> ZADANIE 7.1: TESTY FIZYKI DOTYKU <<<")
    print("-" * 30)
    print(ga.scroll_down_logic(duration_ms=800))
    print(ga.long_press_element("LIST_ITEM"))
    print("-" * 30)
