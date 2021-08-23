import "package:flutter/material.dart";

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() => print("Pergunta respondida!");

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual o seu Jedi favorito?",
      "Qual sua cor de sabre favorita?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
