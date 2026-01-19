import 'package:flutter/material.dart';
import 'package:note_app/core/appbar_color.dart';
import 'package:note_app/data_base.dart';

class CreateNotes extends StatefulWidget {
  const CreateNotes({super.key});

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  final titleController=TextEditingController();
  final bodyController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarColor.appbarColor,
        title: const Text('New Note'),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
        leading: const Icon( Icons.chevron_left , color: Colors.white,size: 30,),

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
        onPressed: () {
          int id = DataBase.dataBase.length + 1;
          DataBase().saveNote(id:id , notetitle:titleController.text, note:bodyController.text);
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
        backgroundColor: AppbarColor.appbarColor,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}