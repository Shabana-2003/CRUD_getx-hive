// getx 

import 'package:get/get.dart';
import 'package:getx_hive_sample/model/notes.dart';
import 'package:getx_hive_sample/repository/box_repository.dart';
import 'package:hive/hive.dart';

class NoteController extends GetxController{
  final Box _observableBox =BoxRepocitory.getBox();

Box get observableBox => _observableBox;
 
int get notedCount => _observableBox.length;

createNote({required Note note }){
  _observableBox.add(note);
  update();
}

deleteNote({required int index }){
  _observableBox.deleteAt(index);
  update();
}

updateNote({required int index,required Note note }){
  _observableBox.putAt(index,note);
  update();
}
}