import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:note_app/controller/home_screen_controller.dart';
import 'package:note_app/core/appbar_color.dart';
import 'package:note_app/core/background_mode.dart';
import 'package:note_app/note_view.dart';
import 'create_notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController controller = Get.put(HomeScreenController());
  
  SlidableActionCallback? get doNothing => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarColor.appbarColor,
        title: const Text("NotePad"),
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
        backgroundColor: AppbarColor.appbarColor,
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => const CreateNotes()));
        },
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return ListView.builder(

                itemCount: controller.notesList.length,
                itemBuilder: (context, index) {
                  int noteId = controller.notesList.keys.elementAt(index);
                  String notettile = controller.notesList[noteId]['notetitle'];
                  String noteContent = controller.notesList[noteId]["note"];

                  return Slidable(
                   
                    key: const ValueKey(1),
                  
                   
                    startActionPane:  ActionPane(
                      motion: ScrollMotion(),
                      children: [
                       
                        SlidableAction(
                          onPressed:(BuildContext context){
                            controller.deleteNote(noteId);
                          } ,
                          backgroundColor: const Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        
                      ],
                    ),
                  
                    child:  ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NoteView(telebolunannoteid: noteId),
                                  ),
                                );
                              },
                              title: Text(notettile),
                              subtitle: Text(noteContent),
                            ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
