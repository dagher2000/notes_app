import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_node_state.dart';

class AddNoteCubit extends Cubit<AddNodeState> {
  AddNoteCubit() : super(AddNoteInitial());
}
