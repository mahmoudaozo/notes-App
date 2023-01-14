import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/state.dart';
import 'package:note_app/models/note_models.dart';

class ReadNoteCubit extends Cubit<ReadNoteStates> {
  // NotesCubit(super.initialState);
  ReadNoteCubit() : super(ReadNotesInitial());
  addNote(NoteModel note) async {
    emit(ReadNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      List<NoteModel> notes = notesBox.values.toList();

      // print(notesBox);

      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailuer(e.toString()));
    }
  }
}
