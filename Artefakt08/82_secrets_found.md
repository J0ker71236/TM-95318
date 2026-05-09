# 🛡️ RAPORT ANALIZY WYCIEKÓW (SECRETS)
**Student:** Oleksandr Yurychenko  
**Indeks:** 95318  
**Data raportu:** 09.05.2026  

---

## 🛑 1. Trzy najbardziej groźne znaleziska (High Risk)
*Poniższe elementy stanowią krytyczne zagrożenie i wymagają natychmiastowej interwencji w kodzie źródłowym:*

1. **[URL_Endpoint] -> `http://www.example.com/lala/foobar@example.com`**
   - *Uzasadnienie:* Obecność adresu e-mail w ścieżce URL wskazuje na potencjalny wyciek danych użytkownika lub twardo zakodowane (hardcoded) poświadczenia środowiska testowego.
2. **[Potential_Secret] -> `password`**
   - *Uzasadnienie:* Wykrycie tego ciągu w pliku `strings.xml` stwarza wysokie ryzyko, że deweloper zdefiniował tam domyślne hasło dostępu do lokalnej bazy danych lub usługi zewnętrznej.
3. **[Potential_Secret] -> `reset_password_warning`**
   - *Uzasadnienie:* Może to sugerować implementację mechanizmu resetowania hasła po stronie klienta (lokalnie). Jest to poważna wada architektoniczna, która ułatwia atakującym manipulację procesem odzyskiwania dostępu.

## 🟢 2. Trzy znaleziska typu "False Positive" (Low/No Risk)
*Poniższe ciągi znaków zostały błędnie sklasyfikowane przez skaner jako zagrożenie i są bezpieczne:*

1. **[URL_Endpoint] -> `http://www.google.com`**
   - *Uzasadnienie:* Jest to standardowy adres URL, najprawdopodobniej wykorzystywany w aplikacji jedynie do weryfikacji aktywnego połączenia sieciowego.
2. **[API_Key_Format] -> `table_layout_1_triple_star`**
   - *Uzasadnienie:* Pomimo dopasowania do wzorca długiego klucza alfanumerycznego, jest to wyłącznie wewnętrzny identyfikator (ID) elementu interfejsu graficznego (Layoutu).
3. **[API_Key_Format] -> `abc_font_family_display_3_material`**
   - *Uzasadnienie:* To nazwa standardowego zasobu systemowego powiązanego z czcionkami z biblioteki Material Design.

---

## 🎓 Wnioski końcowe
Automatyczne skanowanie za pomocą wyrażeń regularnych (RegEx) jest wysoce skuteczne w szybkim mapowaniu potencjalnych wektorów ataku. Wymaga jednak **obligatoryjnej manualnej weryfikacji inżynierskiej**, ponieważ narzędzie statyczne nie analizuje kontekstu biznesowego i architektonicznego aplikacji, co generuje tzw. False Positives.