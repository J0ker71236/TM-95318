# 🏦 RAPORT Z AUDYTU BEZPIECZEŃSTWA: APIDEMOS
**Data:** [09-05-2026]
**Audytor:** [Oleksandr, nr.95318]  
**Projekt:** Mobilny System Demonstracyjny (Android)

---

## 📊 1. OCENA KOŃCOWA (SECURITY SCORE)
**WYNIK:** 0/100  
**STATUS:** 🔴 [REJECTED / NEEDS FIX]/ Approved

---

## 🛡️ 2. KLUCZOWE OBSZARY RYZYKA

### A. Konfiguracja Systemowa (Zadanie 8.1)
* **Problem:** Flaga `debuggable="true"` w Manifest.
* **Wpływ:** Umożliwia napastnikowi podpięcie debuggera i kradzież danych z pamięci ulotnej.

### B. Wycieki Danych (Zadanie 8.2)
* **Problem:** Wykryto twardo zakodowane słowa kluczowe (np. `password`) w zasobach.
* **Wpływ:** Ryzyko przejęcia konta testowego lub dostępu do niepublicznych endpointów.

### C. Biblioteki Zewnętrzne (Zadanie 8.3)
* **Problem:** Użycie `org.apache.commons` w wersji 1.0.0.
* **Wpływ:** Podatność **CVE-2015-7501 (CRITICAL)** pozwalająca na zdalne wykonanie kodu na urządzeniu użytkownika.

---

## 📝 3. MAPA DROGOWA NAPRAWCZA (REMEDIATION)
1. **[PRIORYTET 1]:** Aktualizacja biblioteki `org.apache.commons` do najnowszej bezpiecznej wersji.
2. **[PRIORYTET 1]:** Wyłączenie trybu debugowania w wersji produkcyjnej (Release build).
3. **[PRIORYTET 2]:** Przeniesienie wszystkich wrażliwych ciągów znaków ze `strings.xml` do bezpiecznego magazynu kluczy (Android Keystore).

---

## 🎓 WNIOSKI KOŃCOWE
Aplikacja w obecnym stanie **nie może zostać opublikowana**. Poziom ryzyka związanego z bibliotekami firm trzecich oraz błędną konfiguracją manifestu jest zbyt wysoki dla bezpiecznego użytkowania.
 