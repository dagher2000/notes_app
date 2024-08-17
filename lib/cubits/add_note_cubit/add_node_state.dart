abstract class AddNodeState {}

class AddNoteInitial extends AddNodeState {}

class AddNoteLoading extends AddNodeState {}

class AddNoteSuccess extends AddNodeState {}

class AddNoteFailure extends AddNodeState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
