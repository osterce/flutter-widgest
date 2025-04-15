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
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Hola Flutter', style: TextStyle(color: Colors.indigo),),
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.red, Colors.green])
        ),
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            //color: Colors.cyanAccent,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: flagColor ? [Colors.red.shade100, Colors.red.shade900] :[Colors.green.shade100, Colors.green.shade900],
                //begin: Alignment.topLeft,
                //end: Alignment.bottomRight
              ),
              borderRadius: flagColor
                ? BorderRadius.circular(100)
                : BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Center(child: Text('Texto', style: TextStyle(fontSize: 50),))),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flagColor = !flagColor;
          });
          //print('flagColor=$flagColor'); //para debugging
        },
        backgroundColor: Colors.redAccent,
        child: Text('+', style: TextStyle(fontSize: 45, color: Colors.white),),
        ),
    );
  }
}