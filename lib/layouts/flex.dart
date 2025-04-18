import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool flagButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d1e7),
      appBar: AppBar(
        backgroundColor: Color(0xff0960AE),
        title: Text(
          'Flex',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Flex(
        direction: flagButton
          ?Axis.vertical
          :Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          nodo( Colors.red ),
          nodo( Colors.blue ),
          nodo( Colors.yellow ),
          nodo( Colors.green ),
          flagButton
            ? SizedBox(width: double.infinity)
            : SizedBox(height: double.infinity)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flagButton = !flagButton;
          });
        }
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