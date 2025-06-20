import 'package:dgid/pages/login.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  String ?selectValue;
  String  ?secteurID;
  String ?dateEnquete;
  String ?referenceProj;
  dynamic actSemaine=[];
  dynamic containteValue=[];

  MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => Login(),  //QrCode  ImageUploadScreen(),//Geolocalisation(),// MaPage(),//Login(),
        "/contact": (context) => Login(),
        "/enquetesAnalyses": (context) => Login(),
      },
      theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.brown
      ),
      // title: MaPage(), /*"appTitle",*/
      // home: MaPage(),
      initialRoute:  "/home",
    );
  }
}
