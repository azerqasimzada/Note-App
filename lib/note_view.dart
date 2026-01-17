import 'package:flutter/material.dart';
import 'package:note_app/data_base.dart';

class NoteView extends StatefulWidget {
  final int telebolunannoteid;
  const NoteView({super.key, required this.telebolunannoteid});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  TextEditingController noteController = TextEditingController();
  String notetitle = "";

  @override
  void initState() {
    super.initState();
    notetitle = DataBase.dataBase[widget.telebolunannoteid]['notetitle'];
    noteController.text = DataBase.dataBase[widget.telebolunannoteid]['note'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          DataBase.dataBase[widget.telebolunannoteid]['note'] = noteController.text;
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text(notetitle)),
      body: Column(
        children: [
          Expanded(
            child: TextFormField(
              maxLines: 1000,
              controller: noteController,
              
            ),
          ),
        ],
      ),
    );
  }
}
