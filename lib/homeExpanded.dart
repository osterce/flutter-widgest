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
        children: [
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
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            )
          ),
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