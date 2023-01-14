import 'package:note_app/models/note_models.dart';

abstract class ReadNoteStates {}

class ReadNotesInitial extends ReadNoteStates {}

// class ReadNotesLoading extends ReadNoteStates {}

class ReadNotesSuccess extends ReadNoteStates {
//لو مش هباصي البيانات في حتت بعيده استقبلها هنا
  final List<NoteModel> notes;

  ReadNotesSuccess(this.notes);
}

// class ReadNotesFailuer extends ReadNoteStates {
//   final String errMsg;

//   ReadNotesFailuer(this.errMsg);
// }
