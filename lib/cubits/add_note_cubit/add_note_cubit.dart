import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/conestants.dart';
import 'package:note_app/cubits/add_note_cubit/add_node_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNodeState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xff2B2D42);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
