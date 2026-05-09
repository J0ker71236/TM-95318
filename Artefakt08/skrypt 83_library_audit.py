import json
import os


def audit_libraries_from_file(req_path="requirements.txt"):
    print(">>> ZADANIE 8.3: ANALIZA ŁAŃCUCHA DOSTAW (SCA - Software Composition Analysis) <<<")

    # 1. Baza danych podatności (CVE Database)
    vulnerability_db = {
        "com.google.android.gms": {"cve": "CVE-2021-4352", "severity": "HIGH", "desc": "Błąd weryfikacji certyfikatu"},
        "com.squareup.okhttp": {"cve": "CVE-2016-2402", "severity": "MEDIUM", "desc": "Podatność na Man-in-the-Middle"},
        "org.apache.commons": {"cve": "CVE-2015-7501", "severity": "CRITICAL", "desc": "Zdalne wykonanie kodu (RCE)"},
        "com.android.support": {"cve": "CVE-2019-1234", "severity": "LOW", "desc": "Wyciek informacji w logach"}
    }

    if not os.path.exists(req_path):
        print(f"BŁĄD: Nie znaleziono pliku {req_path}! Stwórz go najpierw.")
        return

    found_vulnerabilities = []

    # 2. Czytanie i parsowanie listy bibliotek
    with open(req_path, "r") as f:
        lines = f.readlines()

    print(f"[INFO] Rozpoczynam skanowanie bibliotek z pliku: {req_path}...\n")

    for line in lines:
        line = line.strip()
        if not line or line.startswith("#"): continue

        # Split nazwy od wersji (np. biblioteka:wersja)
        parts = line.split(":")
        if len(parts) < 2: continue

        lib_name = parts[0]
        lib_version = parts[1]

        # 3. Sprawdzanie w bazie CVE
        if lib_name in vulnerability_db:
            issue = vulnerability_db[lib_name]
            found_vulnerabilities.append({
                "library": lib_name,
                "version": lib_version,
                "cve_id": issue["cve"],
                "severity": issue["severity"],
                "description": issue["desc"]
            })

    # 4. Zapis do raportu JSON
    with open("83_vulnerabilities.json", "w", encoding="utf-8") as f:
        json.dump(found_vulnerabilities, f, indent=4, ensure_ascii=False)

    # 5. Podsumowanie dla inżyniera
    print(f" Wynik audytu: Znaleziono {len(found_vulnerabilities)} podatności.")
    print("-" * 60)
    for v in found_vulnerabilities:
        color = "🔴" if v["severity"] in ["HIGH", "CRITICAL"] else "🟡"
        print(f"{color} [{v['severity']}] {v['library']} ({v['version']})")
        print(f"    Id: {v['cve_id']} | Opis: {v['description']}\n")


if __name__ == "__main__":
    audit_libraries_from_file()


