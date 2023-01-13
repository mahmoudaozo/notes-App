//عشان اعمل موديل من ال hive
//خعمل كالاتي
//1-هحط قبل الكلاس id يكون مفيش زيه
//@HiveType(typeId: 0)
//بعد كده قبل كل متغير هعملو id [رضو ب]
//@HiveField(الرقم)
//بعد كده هكتب سطر عشان اعمل جينيريت للكود السطر هو
//part 'note_models.g.dart';
//بكتب نفس اسم الصفحه اللي انا بعملها الكود .g.dart
//بعد كده بروح الcmd
//واكتب الاتي
//flutter packages pub run build_runner build
//https://docs.hivedb.dev/#/custom-objects/generate_adapter
import 'package:hive/hive.dart';

part 'note_models.g.dart';

///////////////////
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
