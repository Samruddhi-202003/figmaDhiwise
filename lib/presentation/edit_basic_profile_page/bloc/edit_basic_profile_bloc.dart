import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/edit_basic_profile_page/models/edit_basic_profile_model.dart';
part 'edit_basic_profile_event.dart';
part 'edit_basic_profile_state.dart';

/// A bloc that manages the state of a EditBasicProfile according to the event that is dispatched to it.
class EditBasicProfileBloc
    extends Bloc<EditBasicProfileEvent, EditBasicProfileState> {
  EditBasicProfileBloc(EditBasicProfileState initialState)
      : super(initialState) {
    on<EditBasicProfileInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<EditBasicProfileState> emit,
  ) {
    emit(state.copyWith(
      englishYes: event.value,
    ));
  }

  _onInitialize(
    EditBasicProfileInitialEvent event,
    Emitter<EditBasicProfileState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      spouseDescriptiController: TextEditingController(),
      englishYes: false,
    ));
  }
}
