# 🛡️ AUDYT BEZPIECZEŃSTWA: MANIFEST SCANNER
**Status:** Wykonano automatyczną ekstrakcję ryzyka.

### 📝 1. Zawartość RiskyPermission.xml
Zidentyfikowano następujące wpisy krytyczne:
- **Debuggable:** `true` (⚠️ WYSOKIE RYZYKO - Aplikacja podatna na inżynierię wsteczną w czasie rzeczywistym).
- **Permissions:** Wykryto uprawnienia dające dostęp do sieci (`INTERNET`) oraz pamięci zewnętrznej.

### 🧠 2. Interpretacja Inżynierska
Z punktu widzenia bezpieczeństwa, najpoważniejszym problemem jest flaga `debuggable`. Pozwala ona na użycie komendy `adb jdwp` do śledzenia procesów aplikacji przez osoby niepowołane. 

### 🛠️ 3. Akcja korygująca
Zaleca się wdrożenie skryptu do procesu CI/CD (np. w Jenkins/GitHub Actions), który będzie automatycznie blokował buildy, jeśli `RiskyPermission.xml` wykaże flagę `debuggable="true"`.

####  Raport wykonanay przez:
**Podpis:** Oleksandr, nr.95318
**Data:**  09.05.2026
 