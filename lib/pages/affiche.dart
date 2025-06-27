import 'package:flutter/material.dart';
class Incremente extends StatefulWidget {
  Incremente({super.key});

  @override
  State<Incremente> createState() => _IncrementeState();
}

class _IncrementeState extends State<Incremente> {
  int conteur=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        title: const Text('Incremente', style: TextStyle(color: Colors.white
        ),),),
      body: Center(
        child: Text("conteur value = ${conteur}"),
      ),
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add,),
            onPressed: () {
              setState((){
                ++conteur;
              }
              );

              print(conteur);
            },

          ),
          SizedBox(width: 10,),
          FloatingActionButton(
            child: Icon(Icons.remove,),
            onPressed: () {
              setState((){
                --conteur;
              }
              );

              print(conteur);
            },

          ),
        ],
      ),

    );
  }
}
