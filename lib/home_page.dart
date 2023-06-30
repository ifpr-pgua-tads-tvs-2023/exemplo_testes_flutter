import 'package:flutter/material.dart';
import 'package:simple_converter/teclado.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  final Controller controller;
  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  funcao(String tecla) {
    switch (tecla) {
      case "=":
        widget.controller.converter();
        break;
      case "C":
        widget.controller.limpar();
        break;
      default:
        widget.controller.adicionarDigito(tecla);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor F2C"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 5),
                color: Colors.purple,
                width: 80,
                height: 30,
                alignment: Alignment.centerRight,
                child: Text("${widget.controller.valorEntrada} ºF"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("="),
              ),
              Container(
                padding: EdgeInsets.only(right: 5),
                color: Colors.green,
                width: 80,
                height: 30,
                alignment: Alignment.centerRight,
                child: Text("${widget.controller.valorSaida} ºC"),
              ),
            ],
          ),
          SizedBox(height: 5),
          Teclado(funcao: funcao)
        ],
      ),
    );
  }
}
