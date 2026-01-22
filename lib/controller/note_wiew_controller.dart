import 'package:get/get.dart';
import 'package:note_app/controller/home_screen_controller.dart';


class NoteWiewController extends GetxController {
HomeScreenController homeScreenController = Get.find();
void updateNote(int id, String title, String body) {
  homeScreenController.notesList[id]['notetitle'] = title;
  homeScreenController.notesList[id]['note'] = body;
  homeScreenController.notesList.refresh();
}
}