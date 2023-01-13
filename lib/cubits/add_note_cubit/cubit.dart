import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/state.dart';
import 'package:note_app/models/note_models.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  // NotesCubit(super.initialState);
  AddNoteCubit() : super(AddNotesInitial());
  addNote(NoteModel note) {}
}
