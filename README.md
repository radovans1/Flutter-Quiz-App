# Flutter Quiz App

Kompletný školský Flutter kvíz so šiestimi otázkami, náhodným poradím odpovedí, výsledkami a reštartom.

## Spustenie

Projekt je v ZIP archíve. Po stiahnutí repozitára ho rozbaľ:

```sh
git clone https://github.com/radovans1/Flutter-Quiz-App.git
cd Flutter-Quiz-App
unzip quiz_app_kompletny_projekt.zip
cd quiz_app
flutter pub get
flutter run
```

Vyžaduje Flutter s Dart SDK 3.13.5 alebo novším. Spusti emulátor alebo pripoj zariadenie. Web: `flutter run -d chrome`.

## Odovzdanie

- `quiz_app_kompletny_projekt.zip`: celý projekt pre Android, iOS a web, testy a podrobný návod.
- `quiz_app_zdrojove_subory.zip`: požadované lib/ a pubspec.yaml.
- Doplň screenshot Questions Screen s otázkou a odpoveďami.
- Doplň screenshot Results Screen so skóre, prehľadom a Restart Quiz.

## Implementácia a overenie

StatefulWidget + setState, samostatný data súbor, map() + spread, shuffle, automatický prechod, summary mapy a where()/length, Row/Column/Expanded/SingleChildScrollView a reštart.

`flutter analyze` bez problémov. Oba testy prešli vrátane skóre, reštartu a menšieho displeja.
