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
          'Row',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          nodo( Colors.blue ),
          nodo( Colors.red ),
          nodo( Colors.orange ),
          SizedBox(
            height: double.infinity,
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