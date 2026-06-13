# Architektura i Automatyzacja Testów Mobilnych – Kompleksowe Laboratorium (Bloki 1-10)
## Uniwersytet WSB Merito Wrocław
**Kierunek:** Informatyka / Aplikacje Mobilne w Chmurze
**Przedmiot:** Testowanie aplikacji mobilnych
**Prowadzący:** mgr Mariusz Dworniczak

---

## 📋 Przegląd Projektu
Niniejsze repozytorium stanowi kompletne podsumowanie cyklu 10 bloków laboratoryjnych poświęconych nowoczesnym metodologiom testowania aplikacji mobilnych (ze szczególnym uwzględnieniem systemu Android). Projekt ewoluował od podstawowej konfiguracji kontenerów, przez inżynierię wsteczną pakietów instalacyjnych, inspekcję drzewa UI i dynamiczną interakcję z elementami, aż po budowę zaawansowanego frameworka opartego na wzorcu **Page Object Model (POM)**, automatyzację testów hybrydowych (API + Appium) oraz audyty bezpieczeństwa.

---

## 🛠️ Globalny Stos Technologiczny
* **System operacyjny / Środowisko:** Linux (Ubuntu) / Host OS
* **Konteneryzacja i Orkiestracja:** Docker, Docker Compose
* **Automatyzacja Testów:** Appium Server (wersja 3.x), Appium Python Client
* **Język programowania:** Python 3.10+
* **Inżynieria wsteczna i statyczna analiza:** Android Asset Packaging Tool (`aapt`), `shasum` (kryptografia), Android Debug Bridge (`adb`)
* **Biblioteki Python:** `requests` (testy integracyjne API), `json`, `xml.etree.ElementTree`, `datetime`
* **Zarządzanie kodem i raportowanie:** Git, GitHub, formaty raportów: JUnit XML, Markdown (`.md`)

---

## 🎯 Szczegółowy Opis Bloków Laboratoryjnych

### 🔹 Blok 1: Konteneryzacja środowiska testowego (Docker)
* **Opis działań:** Pierwszym krokiem było wyeliminowanie powszechnego problemu środowiskowego *"u mnie działa"* poprzez pełną konteneryzację środowiska. Przygotowano i uruchomiono zoptymalizowany plik `Dockerfile`, służący jako walidator laboratorium. Skonfigurowano przekazywanie zmiennych środowiskowych (identyfikatora studenta `STUDENT_ID`) z systemu nadrzędnego (Host) do izolowanej warstwy aplikacji w kontenerze. Przetestowano uruchamianie kontenerów efemerycznych przy użyciu flagi `--rm`, co zapewnia czystość środowiska po zakończeniu testu. Zapoznano się z architekturą oficjalnego obrazu `appium/appium` jako zbioru niezmiennych warstw.
* **Użyte technologie:** Docker, `Dockerfile`, CMD (instrukcja wykonawcza), mechanizm interpolacji zmiennych powłoki `/bin/sh`.
* **Artefakt:** Logi z kontenera `lab01-validator` potwierdzające poprawną komunikację Host-Container.

### 🔹 Blok 2: Inżynieria wsteczna i analiza statyczna pakietów APK
* **Opis działań:** Przeprowadzono statyczną analizę bezpieczeństwa i integralności aplikacji testowej `app.apk` (ApiDemos). Za pomocą niskopoziomowych narzędzi SDK Androida wyekstrahowano metadane z pliku manifestu bez dekompilacji kodu źródłowego. Zweryfikowano minimalną (`minSdkVersion`) oraz docelową (`targetSdkVersion`) wersję systemu Android, a także unikalny identyfikator pakietu (`package`). Kluczowym elementem było wygenerowanie sumy kontrolnej SHA256 pliku, służącej jako "odcisk palca" paczki w celu wykrywania potencjalnego wstrzyknięcia złośliwego kodu (trojanizacji). Przeanalizowano również sekcję `native-code` pod kątem obecności bibliotek C/C++ (Android NDK) sygnalizujących ryzyko błędów pamięciowych (np. Buffer Overflow).
* **Użyte technologie:** `aapt` (Android Asset Packaging Tool), `grep`, `shasum -a 256`, architektura ABI.
* **Artefakt:** Skrypt/komenda generująca raport techniczny integralności paczki APK.

### 🔹 Blok 3: Orkiestracja wielokontenerowa i logowanie serwera Appium
* **Opis działań:** Zbudowano dedykowaną infrastrukturę testową w oparciu o narzędzie `Docker Compose`. Skonfigurowano plik `docker-compose.yml` mapujący krytyczny port sieciowy `4723:4723`, umożliwiający zewnętrznym skryptom testowym komunikację z serwerem Appium zamkniętym wewnątrz sieci Dockera. Przeprowadzono zaawansowaną analizę logów systemowych (`docker logs`) w celu identyfikacji poprawnego startu interfejsu REST HTTP serwera na adresie `0.0.0.0`. Przetestowano również mechanizm `docker exec` do bezpośredniej inspekcji runtime'u kontenera, pobierając wersję binariów oraz sprawdzając zainstalowane sterowniki (Drivers).
* **Użyte technologie:** Docker Compose, YAML, Appium REST HTTP Interface, CLI Docker.
* **Artefakt:** Plik `docker-compose.yml` oraz wersja serwera Appium pobrana bezpośrednio z działającego kontenera.

### 🔹 Blok 4: Lokowanie elementów UI i dynamiczna gra selektorów XPath
* **Opis działań:** Skoncentrowano się na jednym z najtrudniejszych aspektów automatyzacji – stabilnym i unikalnym namierzaniu elementów interfejsu użytkownika w drzewie DOM / XML aplikacji mobilnej. Wykorzystując skrypt `selector_game.py`, poddano analizie strukturę widoków. Zadaniem było zbudowanie bezbłędnych, zoptymalizowanych selektorów opartych o ścieżki XPath, identyfikatory zasobów (`resource-id`) oraz atrybuty dostępności (`accessibility id` / `content-desc`). Poprawność konstrukcji selektorów została automatycznie zweryfikowana przez system testowy pod kątem unikalności (brak duplikatów w strukturze widoku).
* **Użyte technologie:** XPath, XML View Hierarchy, Python (`selector_game.py`), Mock Driver simulation.
* **Artefakt:** Plik `xpath_verification.txt` ze statusem `ZALICZONE` oraz wygenerowany log końcowy `FINAL TEST RESULT: PASSED`.

### 🔹 Blok 5: Data-Driven Testing i mapowanie selektorów do struktur JSON
* **Opis działań:** Dokonano refaktoryzacji skryptów testowych w celu separacji kodu logicznego od danych konfiguracyjnych (wzorzec Data-Driven). Wszystkie selektory UI oraz parametry konfiguracyjne sesji (Desired Capabilities, takie jak nazwa pakietu, aktywności czy platformy) zostały wyodrębnione i przeniesione do zewnętrznych plików słownikowych w formacie JSON. Napisano skrypt w języku Python, który dynamicznie parsuje plik JSON, mapuje obiekty, sprawdza dostępność komponentów w layoutach i generuje raport walidacyjny. Wprowadzono mechanizm defensywnego raportowania błędów (informowanie dewelopera o zmianie nazw ID bez przerywania wykonania).
* **Użyte technologie:** Python (moduł `json`), Desired Capabilities, dynamiczne mapowanie struktur danych, Android Manifest Activity.
* **Artefakt:** Słownik selektorów JSON oraz skrypt asercji generujący końcowy `feedback_report` ze statusem zgodności aplikacji `io.appium.android.apis`.

### 🔹 Blok 6: Inżynieria Frameworka – Implementacja wzorca Page Object Model (POM)
* **Opis działań:** Przekształcono luźne skrypty testowe w czytelny, skalowalny i profesjonalny framework architektoniczny klasy inżynierskiej przy użyciu wzorca **Page Object Model (POM)**. Zaprojektowano strukturę wielowarstwową:
    1.  *Warstwa Danych:* Konfiguracja JSON wyciągnięta z Bloku 5.
    2.  *Warstwa Abstrakcji:* Klasa `BasePage` implementująca mechanizmy dziedziczenia, inicjalizację sterownika oraz generyczne metody interakcji.
    3.  *Warstwa Biznesowa:* Klasy obiektów stron (Page Objects) odwzorowujące konkretne ekrany aplikacji mobilnej i hermetyzujące ich logikę biznesową.
    4.  *Warstwa Raportowania:* Moduł automatycznie generujący ustrukturyzowany raport z audytu architektury frameworka w formacie kompatybilnym z systemami CI/CD (JUnit XML) oraz czytelnym Markdown.
* **Użyte technologie:** Programowanie Obiektowe (OOP), Dziedziczenie, Page Object Model, struktura JUnit XML, Markdown formatting.
* **Artefakt:** Kompletna struktura klas POM oraz wygenerowany automatycznie plik raportu `65_final_report.xml`.

### 🔹 Blok 7: Testy obciążeniowe, synchronizacja (Explicit Waits) i zarządzanie stanem cyklu życia
* **Opis działań:** Przeprowadzono testy warunków skrajnych (Stress Testing) i odporności aplikacji na zakłócenia systemowe. Zaimplementowano zaawansowane mechanizmy synchronizacji dynamicznej (**Explicit Wait**) przy użyciu klasy `WebDriverWait` oraz warunków `expected_conditions`. Zastąpienie sztywnego czekania (`time.sleep`) pozwoliło na skrócenie czasu egzekucji testu o około 8.5 sekundy, drastycznie zmniejszając podatność na błędy typu *flaky tests*. Przetestowano odporność aplikacji na zmiany stanu cyklu życia systemu Android (obrót ekranu, minimalizacja, przejście w stan `onPause` i powrót do `onResume`). Zweryfikowano, że systemowe okna dialogowe nie zrywają aktywnej sesji testowej Appium.
* **Użyte technologie:** Appium Event Firing, `WebDriverWait`, Expected Conditions, Android Activity Lifecycle (`onPause`/`onResume`), Stress Testing.
* **Artefakt:** Logi wydajnościowe `73_state.log` oraz kompletny raport końcowy w formacie Markdown: `75_stress_report.md`.

### 🔹 Blok 8: Audyt bezpieczeństwa aplikacji mobilnej (Vulnerability & Risk Assessment)
* **Opis działań:** Przeprowadzono kompleksowy, wieloaspektowy audyt bezpieczeństwa aplikacji ApiDemos pod kątem podatności na zagrożenia wymienione w klasyfikacji OWASP Mobile Top 10. Przeanalizowano konfigurację systemową (uprawnienia, debugowalność), zidentyfikowano punkty wycieku danych (niezaszyfrowany storage, logi systemowe wypluwające wrażliwe informacje) oraz zweryfikowano podatności w zewnętrznych bibliotekach. Na podstawie zebranych danych stworzono algorytm kalkulacji ryzyka, który wyliczył ostateczny wskaźnik bezpieczeństwa aplikacji (**Security Score**). Przygotowano profesjonalną mapę drogową (Remediation Roadmap) z podziałem na priorytety naprawcze dla zespołu deweloperskiego.
* **Użyte technologie:** OWASP Mobile Risk Analysis, Threat Modeling, algorytmy scoringowe, Markdown documentation.
* **Artefakt:** Plik kalkulacji ryzyka `84_risk_score.txt` oraz dokument zbiorczy audytu bezpieczeństwa `85_final_audit.md`.

### 🔹 Blok 9: Integracja end-to-end i testy hybrydowe (Mostek Backend API + Frontend Appium)
* **Opis działań:** Zaprojektowano i wdrożono zaawansowany scenariusz testu hybrydowego będący symulacją realnego środowiska produkcyjnego (mostek technologiczny). Napisano zintegrowany skrypt `95_hybrid_test.py`, który w pierwszej kolejności wykorzystuje bibliotekę `requests` do komunikacji z backendem sieciowym za pomocą REST API. Skrypt wykonuje żądanie `POST`, tworząc zasób po stronie serwera i przechwytując zmienną dynamiczną `api_title`. Następnie, bez przerywania działania, skrypt automatycznie inicjuje sesję sterownika Appium w kontenerze Dockera, przechodzi do odpowiedniego ekranu aplikacji mobilnej i za pomocą asercji weryfikuje, czy dane przesłane przez API poprawnie wyrenderowały się na froncie urządzenia mobilnego.
* **Użyte technologie:** REST API Integration, HTTP Methods (POST/GET), Python `requests`, E2E Synchronization, Appium Driver Core.
* **Artefakt:** Skrypt integracyjny `95_hybrid_test.py` wraz ze zrzutami ekranu logów konsoli pokazującymi sekwencyjne działanie API oraz Appium.

### 🔹 Blok 10: Konsolidacja projektu, dokumentacja techniczna i wersjonowanie Git
* **Opis działań:** Ostatni blok stanowił zwieńczenie całego semestru inżynierskiej pracy laboratoryjnej. Przeprowadzono pełen proces czyszczenia, refaktoryzacji oraz optymalizacji kodu źródłowego frameworka (Bug Fixing & Refactoring). Wszystkie artefakty, pliki konfiguracyjne, skrypty testowe oraz raporty cząstkowe z bloków 1-9 zostały uporządkowane. Zainicjalizowano lokalne repozytorium kodu, przygotowano politykę commitów i wypchnięto kompletny projekt na zdalne repozytorium GitHub. Kluczowym zadaniem było stworzenie niniejszego, profesjonalnego pliku `README.md`, stanowiącego wizytówkę projektu, dokumentującego kompetencje z zakresu automatyzacji testów mobilnych od A do Z.
* **Użyte technologie:** Git, GitHub, Markdown techniczny, techniki refaktoryzacji kodu, metodologie dokumentacji projektowej w inżynierii oprogramowania.
* **Artefakt:** Profesjonalny plik `README.md` oraz kompletne, zrewidowane repozytorium kodu.