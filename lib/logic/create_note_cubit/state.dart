class CreateNoteStates {}

class CreateNoteInitialStates extends CreateNoteStates{}

class CreateNoteLoadingStates extends CreateNoteStates{}

class CreateNoteSuccessStates extends CreateNoteStates{}

class CreateNoteErrorStates extends CreateNoteStates{
  final errorMessage;
  CreateNoteErrorStates(this.errorMessage);
}