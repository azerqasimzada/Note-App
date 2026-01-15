import 'package:flutter/material.dart';

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
        title: const Text('New Note'),
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
              hintStyle:const TextStyle(
                fontSize:28,
                fontStyle: FontStyle.italic,
              ) 
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: bodyController,
            decoration: const InputDecoration(
              border:InputBorder.none,
              hintText: 'Your Note',
              hintStyle:const TextStyle(
                fontSize:20,
                fontStyle: FontStyle.italic,
            
          ),
            ),
      ),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}