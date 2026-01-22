import 'package:get/get.dart';
class HomeScreenController extends GetxController {
  var notesList = {}.obs;
  void deleteNote(int id) {
    notesList.remove(id);

  
  }
}