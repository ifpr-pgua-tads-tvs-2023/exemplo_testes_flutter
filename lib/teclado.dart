import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  final Function funcao;

  const Teclado({super.key, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: Key("bt1"),
              onPressed: () {
                funcao("1");
              },
              child: Text("1"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt2"),
              onPressed: () {
                funcao("2");
              },
              child: Text("2"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt3"),
              onPressed: () {
                funcao("3");
              },
              child: Text("3"),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: Key("bt4"),
              onPressed: () {
                funcao("4");
              },
              child: Text("5"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt5"),
              onPressed: () {
                funcao("5");
              },
              child: Text("5"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt6"),
              onPressed: () {
                funcao("6");
              },
              child: Text("6"),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: Key("bt7"),
              onPressed: () {
                funcao("7");
              },
              child: Text("7"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt8"),
              onPressed: () {
                funcao("8");
              },
              child: Text("8"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt9"),
              onPressed: () {
                funcao("9");
              },
              child: Text("9"),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: Key("bt0"),
              onPressed: () {
                funcao("0");
              },
              child: Text("0"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("bt="),
              onPressed: () {
                funcao("=");
              },
              child: Text("="),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              key: Key("btC"),
              onPressed: () {
                funcao("C");
              },
              child: Text("C"),
            ),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
