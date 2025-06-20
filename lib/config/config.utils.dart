import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Widget> modelBuilder<M>(
      List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();

  static void showSheet(
      BuildContext context, {
        required Widget child,
        required VoidCallback onClicked,
      }) =>
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            child,
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Ok'),
            onPressed: onClicked,
          ),
        ),
      );

  static void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text, style: TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
  //
  // getDateHeureAn(String ?date){
  //   if(date=="null"){
  //     return "";
  //   }else{
  //   return DateFormat("yyyy-MM-dd'T'HH:mm:ss")
  //       .format(DateTime.parse(date.toString()));
  // }}
  //
  //
  // getDateHeureFr(String? date){
  //    if(date=="null"){
  //      return "";
  //    }else{
  //   return DateFormat("dd-MM-yyyy HH:mm:ss")
  //       .format(DateTime.parse(date.toString()));
  //    }
  // }
  // getHeureFr(String ?date){
  //   if(date=="null"){
  //     return "";
  //   }else{
  //     return DateFormat("HH:mm")
  //         .format(DateTime.parse(date.toString()));
  //   }}
  //
  //
  // getDateFr(String ?date){
  //   if(date=="null"){
  //     return "--";
  //   }else{
  //   return DateFormat("dd/MM/yyyy")
  //       .format(DateTime.parse(date.toString()));
  // }}
  // getDateFrMS(String ?date){
  //   if(date=="null"){
  //     return "Selectionnez la date";
  //   }else{
  //     return DateFormat("dd/MM/yyyy")
  //         .format(DateTime.parse(date.toString()));
  //   }}
  //
  // getJiffyDateTimeAn(String date){
  //
  //     return Jiffy.parse(date, pattern: "dd/MM/yyyy'T'HH:mm:ss").format(pattern: "yyyy-MM-dd'T'HH:mm:ss");
  // }
  //
  // getJiffyDateTimeAnV(String date){
  //
  //   return Jiffy.parse(date, pattern: "dd/MM/yyyy HH:mm:ss").format(pattern: "yyyy-MM-dd HH:mm:ss");
  // }
  // getJiffyDateAn(String date){
  //
  //   return Jiffy.parse(date, pattern: "dd/MM/yyyy ").format(pattern: "yyyy-MM-dd");
  // }

}