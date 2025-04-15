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
          Container(width: double.infinity, height: 100, color: Colors.red,),
          Flexible(
            child: Container(color:Colors.teal)
          ),
          Flexible(
            child: Container(color:Colors.purpleAccent, height: 150),
            fit: FlexFit.loose, // tight deja de ser flex y se vulve expanded
          ),
          Flexible(
            child: Container(color:Colors.amberAccent)
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