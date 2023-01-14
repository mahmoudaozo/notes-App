import 'package:flutter/material.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/cubit.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/state.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/cubit.dart';
import 'package:note_app/cubits/add_note_cubit/read%20cubit/state.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';
import 'notes_list_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).ReadNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
