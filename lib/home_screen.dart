import 'package:flutter/material.dart';
import 'package:note_app/core/background_mode.dart';
import 'package:note_app/data_base.dart';
import 'package:note_app/note_view.dart';
import 'create_notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundMode(),
        title: const Text(
          'NotePad',
          style: TextStyle(decoration: TextDecoration.underline),
        ),
        actions: [
          //dark mode button
          IconButton(
            onPressed: () {
              isDarkMode = !isDarkMode;
              setState(() {});
            },
            icon: const Icon(Icons.sunny),
          ),
          // Refresh buton
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: backgroundMode(),
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => const CreateNotes()));
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: DataBase.dataBase.length,
          itemBuilder: (context,index) 
          {
           int noteId = DataBase.dataBase.keys.elementAt(index);
           String notettile = DataBase.dataBase[noteId]['notetitle'];
            String noteContent = DataBase.dataBase[noteId]["note"];
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NoteView(telebolunannoteid: noteId)));
              },
              title: Text(notettile),
              subtitle: Text(noteContent),
            );

        })
      ),
    );
  }
}
