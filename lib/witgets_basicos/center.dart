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
      backgroundColor: Color(0xffb8d1e7),
      appBar: AppBar(
        title: Text(
          'Center, Decoration',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff0960ae),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color(0xff0960ae), Color(0xffb8d1e7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            //color: Color(0xff0960ae),
            decoration: BoxDecoration(
            /* ----- Lineal Gradient-----*/
              /* gradient: LinearGradient(
                colors: [ Color(0xff0960ae), Color(0xffb8d1e7) ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ), */
              gradient: RadialGradient(
                colors: flagColor
                        ?[ Color(0xffb8d1e7), Color(0xff0960ae) ]
                        :[ Color(0xffb8d1e7), Color(0xffff6568) ]
              ),
              borderRadius: flagColor
                            ?BorderRadius.circular(100)
                            :BorderRadius.circular(25),
              border: Border.all(
                color: flagColor
                      ?Color(0xff0960ae)
                      :Color(0xffff6568),
                width: 2
              )
            ),
            child: Center(
              child: Text(
                'Texto',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flagColor = !flagColor;
          });
        },
        backgroundColor: Color(0xff0960ae),
          child: Text(
            '+',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          ),
      ),
    );
  }
}