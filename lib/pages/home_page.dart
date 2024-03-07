import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Questo è un metodo che viene chiamato quando il pulsante viene premuto.
  void onButtonPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp è il widget radice per la maggior parte delle app Flutter, e include una serie di funzionalità importanti come la navigazione e i temi.
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        // Center è un widget che centra il suo figlio nel se stesso.
        // Qui, il figlio è il metodo body() che restituisce un widget Column.
        body: Center(child: body()),
      ),
    );
  }

  // Questo metodo restituisce un AppBar, che è una barra di applicazioni tipica per le applicazioni Material Design.
  AppBar appBar() => AppBar(
    title: Text("Button"),
    backgroundColor: Colors.purple,
  );

  // Questo metodo restituisce un widget Column, che prende una lista di figli e li dispone verticalmente.
  // In questo caso, i figli sono un TextButton, un ElevatedButton e un IconButton.
  Widget body() => Column(
    // MainAxisAlignment.center posiziona i figli il più vicino possibile al centro lungo l'asse verticale.
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // TextButton è un tipo di pulsante che mostra il testo che descrive l'azione che verrà eseguita quando il pulsante viene premuto.
      TextButton(
        onPressed: onButtonPressed,
        child: Text("Text Button",
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
      // ElevatedButton è un tipo di pulsante Material Design che contiene inchiostro splash e ombreggiatura.
      ElevatedButton(
        onPressed: onButtonPressed,
        child: Text("Elevated Button",
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
      // IconButton è un tipo di pulsante che contiene un'icona senza testo che descrive l'azione che verrà eseguita quando il pulsante viene premuto.
      IconButton(
        onPressed: onButtonPressed,
        icon: Icon(Icons.plus_one, size: 50, color: Colors.pink),
      )
    ],
  );
}