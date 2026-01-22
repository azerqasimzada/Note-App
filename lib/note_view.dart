import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controller/note_wiew_controller.dart';

class NoteView extends StatefulWidget {
  final int telebolunannoteid;
  const NoteView({super.key, required this.telebolunannoteid});

  @override
  State<NoteView> createState() => _NoteViewState();

}

class _NoteViewState extends State<NoteView> {
  NoteWiewController noteWiewController = Get.put(NoteWiewController());
  TextEditingController noteController = TextEditingController();
  TextEditingController noteTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    noteTitleController.text = noteWiewController.homeScreenController.notesList[widget.telebolunannoteid]['notetitle'];
    noteController.text = noteWiewController.homeScreenController.notesList[widget.telebolunannoteid]['note'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: TextFormField(
          onChanged: (value) {
                  noteWiewController.updateNote(widget.telebolunannoteid, noteTitleController.text, noteController.text);
                },
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          maxLines: 1,
          controller: noteTitleController,
          style: const TextStyle(color: Colors.black, fontSize: 22),
          
        ),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 22),
        
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (value) {
                  noteWiewController.updateNote(widget.telebolunannoteid, noteTitleController.text, noteController.text);
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                maxLines: 1000,
                controller: noteController,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
