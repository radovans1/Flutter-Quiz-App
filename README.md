# Flutter Quiz App

Šesť otázok o Flutteri, náhodné poradie odpovedí, výsledky a reštart. Bez externých balíkov či obrázkov. Vyžaduje Flutter s Dart SDK 3.13.5 alebo novším.

## Spustenie

```sh
flutter pub get
flutter run
```

Spusti emulátor alebo pripoj zariadenie. Web: `flutter run -d chrome`.

## Implementácia

- `main.dart`: téma a vstup aplikácie.
- `quiz.dart`: StatefulWidget, setState, prepínanie Start/Questions/Results a vybrané odpovede.
- `start_screen.dart`: Start Quiz.
- `questions_screen.dart`: stav otázky, automatický prechod, map() a spread operátor.
- `data/questions.dart`: samostatný štruktúrovaný zoznam otázok.
- `models/quiz_question.dart`: model a shuffle() na kópii zoznamu. Prvá odpoveď v dátach je správna; originál sa nemení.
- `models/answer_button.dart`: tlačidlo podľa odporúčanej štruktúry zadania.
- `results_screen.dart`: summary mapy, where() a length, skóre, percentá a Restart Quiz.
- `questions_summary.dart`: posúvateľný prehľad, Row, Column, Expanded a SingleChildScrollView. Správnosť je označená aj slovne.

Reštart vymaže odpovede a začne prvou otázkou. Možnosti sa premiešajú pri otvorení otázky a počas jej zobrazenia ostávajú stabilné.

## Overenie

```sh
flutter analyze
flutter test
```

Testy preverujú miešanie bez zmeny dát, správne aj nesprávne odpovede, skóre, reštart a posúvanie na displeji 320 × 568.

## GitHub

Samostatný repozitár: https://github.com/radovans1/Flutter-Quiz-App

```sh
git clone https://github.com/radovans1/Flutter-Quiz-App.git
cd Flutter-Quiz-App
flutter pub get
flutter run
```

Pri odovzdaní skontroluj prístup vyučujúceho k repozitáru.

## Checklist odovzdania

- [ ] Odkaz na repozitár s celým projektom.
- [ ] `quiz_app_zdrojove_subory.zip`: lib/ + pubspec.yaml + tento návod.
- [ ] Na emulátore/zariadení stlač Start Quiz.
- [ ] Ulož `01_questions.png`: otázka, počítadlo a možnosti odpovedí.
- [ ] Dokonči kvíz, zvoľ aj nesprávne odpovede.
- [ ] Ulož `02_results.png`: skóre, prehľad odpovedí a Restart Quiz.
- [ ] Over posúvanie výsledkov a reštart.

Screenshoty treba doplniť zo spustenej aplikácie. Úplný projekt pre Android, iOS a web je tiež zabalený v `quiz_app_kompletny_projekt.zip`.
