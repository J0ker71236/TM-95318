import json


class BasePage:
    def __init__(self, selectors_file="53_selectors.json"):
        with open(selectors_file, "r", encoding="utf-8") as f:
            self.selectors = json.load(f)["selectors"]

        print(f"[BASE_PAGE] Pomyślnie zainicjalizowano mapę: {len(self.selectors)} elementów.")
        print(f"Weryfikacja klucza 'ADD': {self.selectors.get('ADD', 'None')}")

    def get_selector(self, business_name):
        return self.selectors.get(business_name, None)


if __name__ == "__main__":
    BasePage()