import 'package:flutter/material.dart';
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
        title: const Text('NotePad',style: TextStyle(decoration: TextDecoration.underline),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateNotes()));
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text('W e l c o m e !', style: const TextStyle(fontSize: 24, color: Colors.white, fontStyle: FontStyle.italic)),
      ),
    );
  }
}