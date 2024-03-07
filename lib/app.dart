import 'package:flutter/material.dart';
import 'package:intro_flutter_3_buttons/pages/home_page.dart';

// La classe App estende StatelessWidget, che è la base per i widget che descrivono una parte dell'interfaccia utente in termini di altri widget più bassi.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp è il widget radice per la maggior parte delle app Flutter, e include una serie di funzionalità importanti come la navigazione e i temi.
    return MaterialApp(
      home: HomePage(),
    );
  }
}
