import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool flagColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column '),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          nodo( Colors.red),
          nodo( Colors.green),
          nodo( Colors.blue),
          nodo( Colors.pink),
          SizedBox(width: double.infinity)
        ],
      ),
    );
  }

  Widget nodo( color ){
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}