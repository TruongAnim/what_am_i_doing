// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'job_time.g.dart';

@collection
class JobTime {
  Id id = Isar.autoIncrement;

  DateTime timestamp = DateTime.now();
  int timeQ1 = 0;
  int timeQ2 = 0;
  int timeQ3 = 0;
  int timeQ4 = 0;
}
