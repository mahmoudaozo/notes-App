abstract class AddNoteStates {}

class AddNotesInitial extends AddNoteStates {}

class AddNotesLoading extends AddNoteStates {}

class AddNotesSuccess extends AddNoteStates {}

class AddNotesFailuer extends AddNoteStates {
  final String errMsg;

  AddNotesFailuer(this.errMsg);
}
