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
          'Stack',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment( -1, -1 ),
            child: nodo( Colors.blue ),
          ),
          Align(
            alignment: Alignment( 0, -1 ),
            child: nodo( Colors.red ),
          ),
          Align(
            alignment: Alignment( 1, -1 ),
            child: nodo( Colors.yellow ),
          ),
          Align(
            alignment: Alignment( -1, 0),
            child: nodo( Colors.green ),
          ),
          Align(
            alignment: Alignment( 0, 0 ),
            child: nodo( Colors.orange ),
          ),
          Align(
            alignment: Alignment( 1, 0 ),
            child: nodo( Colors.pink ),
          ),
          Align(
            alignment: Alignment( -1, 1),
            child: nodo( Colors.white ),
          ),
          Align(
            alignment: Alignment( 0, 1),
            child: nodo( Colors.black ),
          ),
          Align(
            alignment: Alignment( 1, 1),
            child: nodo( Colors.deepPurple ),
          ),
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