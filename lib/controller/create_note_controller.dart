import 'package:get/get.dart';
import 'package:note_app/controller/home_screen_controller.dart';

class CreateNoteController extends GetxController {
  HomeScreenController homeScreenController = Get.find();

  void addNote({required String noteTitle, required String note}) {
    int newNoteId = homeScreenController.notesList.length;
    
    homeScreenController.notesList.addAll({newNoteId++:{
      'notetitle': noteTitle,
      'note': note,
    }});
  
  }
}