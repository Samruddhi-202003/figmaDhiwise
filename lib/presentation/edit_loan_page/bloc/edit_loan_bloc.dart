import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/edit_loan_item_model.dart';
import 'package:samruddhi_s_application1/presentation/edit_loan_page/models/edit_loan_model.dart';
part 'edit_loan_event.dart';
part 'edit_loan_state.dart';

/// A bloc that manages the state of a EditLoan according to the event that is dispatched to it.
class EditLoanBloc extends Bloc<EditLoanEvent, EditLoanState> {
  EditLoanBloc(EditLoanState initialState) : super(initialState) {
    on<EditLoanInitialEvent>(_onInitialize);
  }

  List<EditLoanItemModel> fillEditLoanItemList() {
    return List.generate(5, (index) => EditLoanItemModel());
  }

  _onInitialize(
    EditLoanInitialEvent event,
    Emitter<EditLoanState> emit,
  ) async {
    emit(state.copyWith(
      priceController: TextEditingController(),
    ));
    emit(state.copyWith(
        editLoanModelObj: state.editLoanModelObj?.copyWith(
      editLoanItemList: fillEditLoanItemList(),
    )));
  }
}
