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
          'Expanded',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Column(
        children: [
          /* --- Expanded toma todo el espacio que puede --- */
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            )
          ),
        ],
      ),
    );
  }
}