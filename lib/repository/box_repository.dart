//hive related code 

import 'package:getx_hive_sample/model/notes.dart';
import 'package:hive/hive.dart';

class BoxRepocitory{
  static const String boxName = "CRUD";

  static openBox() async => await Hive.openBox<Note>(boxName);

  static Box getBox()  => Hive.box<Note>(boxName);
  
  static closebox() async => await Hive.box(boxName).close();

}