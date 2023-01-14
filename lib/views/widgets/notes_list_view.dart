import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/cubit.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/state.dart';
import 'package:note_app/models/note_models.dart';
import 'note_item.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteStates>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ReadNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              // itemCount: state is ReadNotesSuccess ? state.notes.length : 0,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(),
                );
              }),
        );
      },
    );
  }
}
