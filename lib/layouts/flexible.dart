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
          'Flexible',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.purple,
          ),
          Expanded(
            child: Container(
              color: Colors.cyan,
            )
          ),
          Flexible(
            //fit: FlexFit.tight, //lo vuelve como un Expanded
            fit: FlexFit.loose, //Respeta su espacio
            child: Container(
              color: Colors.pink,
              height: 90,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.yellow ,
            )
          ),
        ],
      ),
    );
  }
}