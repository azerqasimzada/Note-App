import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controller/create_note_controller.dart';
import 'package:note_app/core/appbar_color.dart';

class CreateNotes extends StatefulWidget {
  const CreateNotes({super.key});

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  CreateNoteController createNoteController = Get.put(CreateNoteController());
  final titleController=TextEditingController();
  final bodyController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarColor.appbarColor,
        title: const Text('New Note'),
        centerTitle: true,
        ),
      body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(
              border:InputBorder.none,
              hintText: 'Title',
              hintStyle:TextStyle(
                fontSize:28,
                fontStyle: FontStyle.italic,
              ) 
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            controller: bodyController,
            decoration: const InputDecoration(
              border:InputBorder.none,
              hintText: 'Your note here...',
              hintStyle:TextStyle(
                fontSize:20,
                fontStyle: FontStyle.italic,
            
          ),
            ),
      ),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {createNoteController.addNote(noteTitle: titleController.text, note: bodyController.text);
        Navigator.pop(context);
        },
        backgroundColor: AppbarColor.appbarColor,
        child: const Icon(Icons.save),
       








      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}