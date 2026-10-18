import '../models/quiz_question.dart';

const questions = [
  QuizQuestion('Čo tvorí základ používateľského rozhrania vo Flutteri?', [
    'Widgety',
    'Databázové tabuľky',
    'HTML súbory',
    'Serverové procesy',
  ]),
  QuizQuestion('Ktorý widget používa meniteľný stav?', [
    'StatefulWidget',
    'StatelessWidget',
    'SizedBox',
    'Icon',
  ]),
  QuizQuestion('Čo zabezpečuje metóda setState()?', [
    'Oznámi zmenu stavu a naplánuje prekreslenie',
    'Ukončí aplikáciu',
    'Uloží dáta do databázy',
    'Vytvorí nový projekt',
  ]),
  QuizQuestion('Na čo slúži SingleChildScrollView?', [
    'Umožňuje posúvať obsah presahujúci dostupný priestor',
    'Rozdeľuje obsah na stránky',
    'Zmenšuje všetky widgety',
    'Používa sa iba na zarovnávanie textu',
  ]),
  QuizQuestion('Čo robí metóda map() pri zobrazovaní odpovedí?', [
    'Premení každú odpoveď na widget',
    'Vymaže nesprávne odpovede',
    'Zoradí odpovede podľa abecedy',
    'Náhodne vyberie odpoveď',
  ]),
  QuizQuestion('Ktorá kombinácia spočíta správne odpovede?', [
    'where() a length',
    'shuffle() a clear()',
    'add() a remove()',
    'toString() a split()',
  ]),
];
