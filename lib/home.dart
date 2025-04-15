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
      appBar: AppBar(title: Text('Número perfecto'),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: tedNumero,
              decoration: InputDecoration(hintText: 'Ingresa el número'),
            ),
            SizedBox(height: 50,),
            Text( resultado, style: TextStyle(fontSize: 35) ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            int n = int.parse(tedNumero.text);
            Perfecto obj = Perfecto(n);
            if(obj.esPerfecto()){
              //print('$n si es perfecto');
              resultado = '$n si es perfecto';
            } else {
              //print('$n no es perfecto');
              resultado = '$n no es perfecto';
            }
          });
        }
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