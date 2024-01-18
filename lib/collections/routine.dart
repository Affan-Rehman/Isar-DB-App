import 'package:isar/isar.dart';

import 'category.dart';
part 'routine.g.dart';
//now write this first, then run, add build_runner, isar_generator:flutter pub run build_runner build

@collection
class Routine {
  //unique used to incremenet automatically, use Id class from isar
  Id id = Isar.autoIncrement;

  late String title;

  //used to tell that this is in composite with title so it can be properly identified
  //now linking, to link with multiple collections, use IsarLinks
  @Index(composite: [CompositeIndex("title")])
  var category = IsarLink<Category>();

  //self explanatory
  @Index(caseSensitive: false)
  late String day;
  @Index() //records arranged according to this
  late DateTime date;
}
