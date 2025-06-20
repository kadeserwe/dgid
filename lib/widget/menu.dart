import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../config/config.constantVariable.dart';
import '../config/config.variableGlobale.dart';
class ConfigMenus{



 // dynamic role = VariableGlobale.roles;

  //dynamic role = ["MOB-M-REVEAU"];
  List<Map<String, dynamic>> menus=[];

  getMenu(){
    print("+++++++++++++++++++++++++++");
   // print(role);
    print("+++++++++++++++++++++++++++");
    if(VariableGlobale.roles.contains(Constant.gestionNav)){
      menus.add({"title":"Gestion des Navires","icon":const Icon(Icons.directions_boat, color: Colors.brown), "route" :"/navire" });
    }
    if(VariableGlobale.roles.contains(Constant.trounee)){
      menus.add({"title":"Tournées","icon":const Icon(Icons.approval, color: Colors.brown),"route" :"/tournee" });
    }

    if(VariableGlobale.roles.contains(Constant.relEau)){
      menus.add({"title":"Relevé Eau","icon":const Icon(Icons.explore, color: Colors.brown),"route" :"/eau" });
    }
    if(VariableGlobale.roles.contains(Constant.relElec)){
      menus.add({"title":"Relevé Electricité","icon":const Icon(Icons.explore, color: Colors.brown),"route" :"/electricite" });
    }

    if(VariableGlobale.roles.contains(Constant.trounee)){
      menus.add({"title":"Marchandise Peche","icon":const Icon(Icons.anchor, color: Colors.brown),"route" :"/manifPeche" });
    }
    return menus;



  }
}