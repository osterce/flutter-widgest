import 'package:center/perfecto.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController tedNumero = TextEditingController();
  String resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d1e7),
      appBar: AppBar(
        backgroundColor: Color(0xff0960AE),
        title: Text(
          'Número perfecto',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: tedNumero,
              decoration: InputDecoration(
                hintText: 'Ingresa un número'
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              resultado,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Color(0xff0960AE),
            onPressed: (){
              setState(() {
                int numero = int.parse( tedNumero.text );
                Perfecto obj = Perfecto(numero);
                if( obj.esPerfecto() ){
                  //print('$numero es perfecto');
                  resultado = '$numero es perfecto';
                } else {
                  //print('$numero no es perfecto');
                  resultado = '$numero no es perfecto';
                }
              });
            },
            child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}