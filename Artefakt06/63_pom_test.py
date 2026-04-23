from MainPage import MainPage


def run_pom_test():
    print(">>> ZADANIE 6.3: URUCHAMIANIE TESTU W ARCHITEKTURZE POM <<<")

    page = MainPage()

    step1 = page.click_add_button()
    step2 = page.check_text_visibility()

    print(step1)
    print(step2)

    with open("64_pom_audit.log", "w", encoding="utf-8") as f:
        f.write(f"Test Execution Log:\n{step1}\n{step2}")


if __name__ == "__main__":
    run_pom_test()