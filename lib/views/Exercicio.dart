// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_app/Models/exercicio.model.dart';
import 'package:flutter_app/Models/sentimento.model.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});
  final ExercicioModel exercicioModel = ExercicioModel(
      id: "EX001",
      name: "Remada Baixa",
      treino: "Treino A",
      comoFazer: "Segura a barra e puxa");

  final List<SentimentoModel> listaSentimentos = [
    SentimentoModel(id: "SE001", data: "08/10/2023", sentimento: "Estou Feliz"),
    SentimentoModel(id: "SE002", data: "09/10/2023", sentimento: "Estou Legal")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste para header"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("Foi Clicado")},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            onPressed: () => {},
            child: const Text("enviar foto"),
          ),
          const Text(
            "Como estou me sentindo ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
              "Texto explicativo de onde deve ficar como estou me sentindo "),
          Divider(),
          const Text(
            "Como Fazer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
              "Texto explicativo de onde deve ficar a forma de fazer o exercicio"),
          Divider()
        ]),
      ),
    );
  }
}
