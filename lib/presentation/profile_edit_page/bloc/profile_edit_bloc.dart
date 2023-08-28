import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/profile_edit_page/models/profile_edit_model.dart';
part 'profile_edit_event.dart';
part 'profile_edit_state.dart';

/// A bloc that manages the state of a ProfileEdit according to the event that is dispatched to it.
class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  ProfileEditBloc(ProfileEditState initialState) : super(initialState) {
    on<ProfileEditInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEditInitialEvent event,
    Emitter<ProfileEditState> emit,
  ) async {}
}
