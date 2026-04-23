from BasePage import BasePage

class MainPage(BasePage):
    def __init__(self):
        super().__init__()
        print("[MAIN_PAGE] Ekran główny zainicjalizowany.")

    def click_add_button(self):
        selector = self.get_selector("ADD")
        if selector:
            return f"SUKCES: Wykonano kliknięcie w element UI o ID: '{selector}'"
        return "ERROR: Selector ADD not found in map!"

    def check_text_visibility(self):
        selector = self.get_selector("TEXT")
        return f"SUKCES: Odnaleziono nagłówek strony (ID: {selector}). Status: Widoczny."

if __name__ == "__main__":
    page = MainPage()
    print(page.click_add_button())
    print(page.check_text_visibility())