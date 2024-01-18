import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_db_app/collections/category.dart';
import 'package:isar_db_app/collections/routine.dart';
import 'package:isar_db_app/screens/create_routine.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar =
      await Isar.open([RoutineSchema, CategorySchema], directory: dir.path);
  runApp(CreateRoutine(
    isar: isar,
  ));
}
