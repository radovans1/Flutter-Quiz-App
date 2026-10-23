# Quiz App

Školský projekt vo Flutteri. Kvíz obsahuje 6 otázok o Flutteri. Po výbere odpovede sa zobrazí ďalšia otázka. Na konci sa zobrazí počet správnych odpovedí a prehľad výsledkov. Tlačidlom Restart Quiz sa dá kvíz spustiť znova.

## Spustenie

```sh
flutter pub get
flutter run
```

Otázky sú v súbore `lib/data/questions.dart`. Poradie odpovedí sa náhodne premiešava.

## Testovanie

Príkazy spúšťaj z koreňového priečinka projektu (kde je `pubspec.yaml`). Po stiahnutí závislostí príkazom `flutter pub get` spusti všetky testy:

```sh
flutter test
```

Samostatne možno spustiť existujúci testovací súbor:

```sh
flutter test test/widget_test.dart
```

Testy v `test/widget_test.dart` overujú:

- Náhodné premiešanie odpovedí zachová všetky odpovede a nezmení pôvodný zoznam.
- Spustenie kvízu cez Start Quiz a postupný prechod všetkými 6 otázkami vrátane zobrazenia ich poradia.
- Výsledné skóre 3 zo 6 pri kombinácii správnych a nesprávnych odpovedí a 6 zo 6 pri všetkých správnych odpovediach.
- Sprístupnenie tlačidiel odpovedí a scrollovanie výsledkov pri rozmere obrazovky 320 × 568 bez výnimiek zachytených testom.
- Reštart cez Restart Quiz a opätovné dokončenie kvízu s novým skóre.

## Checklist pred odovzdaním

- [ ] `flutter pub get` úspešne stiahne závislosti.
- [ ] `flutter analyze` skončí bez hlásených problémov.
- [ ] `flutter test` úspešne dokončí všetky testy.
- [ ] Po `flutter run` je na cieľovom zariadení alebo emulátore ručne overený celý kvíz, skóre, scrollovanie výsledkov a reštart.
- [ ] README a všetky súbory potrebné na spustenie projektu sú uložené v odovzdávanej verzii repozitára.
