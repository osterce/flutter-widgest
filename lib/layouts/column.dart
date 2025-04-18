import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d1e7),
      appBar: AppBar(
        backgroundColor: Color(0xff0960AE),
        title: Text(
          'Column',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center, //se ajusta al más ancho
        children: [
          nodo(Colors.red ),
          nodo(Colors.green ),
          nodo(Colors.blue ),
          nodo(Colors.pink ),
          SizedBox(
            width: double.infinity, //utiliza todo el ancho de la pantalla
          )
        ],
      ),
    );
  }

  Widget nodo(color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}