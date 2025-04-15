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
      body: Stack(
        children: [
          Align(alignment: Alignment(-1, -1), child: nodo(Colors.green)),
          Align(alignment: Alignment(0, -1), child: nodo(Colors.green)),
          Align(alignment: Alignment(1, -1), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
          Align(alignment: Alignment(-1, 0), child: nodo(Colors.green)),
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