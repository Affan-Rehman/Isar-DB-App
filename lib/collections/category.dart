import 'package:isar/isar.dart';
part 'category.g.dart';

@collection
class Category {
  Id id = Isar.autoIncrement;
  //ensures category isnt repeated
  @Index(unique: true)
  late String category;
}
