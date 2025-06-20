

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import '../../../config/config.variableGlobale.dart';
import '../widget/drawer.wedget.dart';

class Accueil extends StatelessWidget {

  Accueil  ( );


  @override
  Widget build(BuildContext context) {
    print("currentPage ++++++++++++++++++++");


    return Scaffold(
      drawer: MonDrawer(),
      appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors.white
          ),
          title: const Text('Accueil',

            style: TextStyle(
                color: Colors.white

            ),),

          actions: <Widget> [

            IconButton(
              padding: const EdgeInsets.only(left: 80.0, right: 40.0),
              icon:  const Icon(Icons.power_settings_new, color: Colors.red ,size: 30,),
              onPressed: () async => {

              },
            ),


          ]
      ),
      body: Center(
        child: Image.asset("images/dgid.png"),

      ),
    );
  }

}
