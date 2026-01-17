import 'package:flutter/material.dart';

class DataBase {
  static Map<int, dynamic> dataBase = {};

  void notElaveEt({ required int id, required String notetitle,  required String note}) {
    dataBase.addAll({id: {
      "notetitle": notetitle,
      "note": note}});
     debugPrint("Note saved: $note with id: $id");
  }

  void saveNote({required int id, required String notetitle, required String note}) {
    dataBase.addAll({id: {
       "notetitle": notetitle,
      "note": note}});
    debugPrint("Note saved: $note with id: $id");
  }
}