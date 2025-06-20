
import 'package:flutter/material.dart';

import 'menu.dart';


class MonDrawer extends StatelessWidget {
   MonDrawer({Key? key}) : super(key: key);
  List menuData=[];

  @override
  Widget build(BuildContext context) {

    ///final apiData= FicheReleveEauController();
    final apiData= ConfigMenus();
   // menuData=apiData.getMenu();
    return Drawer(
      child: ListView(
        children:  [
          const  DrawerHeader (
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.brown,
                        Colors.brown
                      ]
                  )

              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/dgid.png"),
                  backgroundColor: Colors.white,
                  radius: 60,
                ),
              )
          ),
          ...(apiData.getMenu()).map((item){


             return Column(
               children: [
                 ListTile(
                   title:   Text('${item ['title']}', style: const TextStyle(fontSize: 18),),
                   leading: item['icon'],
                   trailing: const  Icon(Icons.arrow_right, color: Colors.brown,),
                   onTap: (){
                     Navigator.of(context).pop();
                     Navigator.pushNamed(context, "${item['route']}");
                   },
                 ),
                 const Divider(height: 0, color: Colors.black12,),
               ],

             );
           })


           ],
      ),
    );
  }
}


/*
* onPressed: (){
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context)=>new tournee()
                           ))
                          }
                          *  dateDemandeMiseEnRoute: listeBonPilotages['bonPilotages'][index]['dateDemandeMiseEnRoute'] != null ? listeBonPilotages['bonPilotages'][index]['dateDemandeMiseEnRoute'] : '',
                                       
*
* */