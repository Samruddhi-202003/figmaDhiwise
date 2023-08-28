// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'edit_loan_item_model.dart';/// This class defines the variables used in the [edit_loan_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EditLoanModel extends Equatable {EditLoanModel({this.editLoanItemList = const []});

List<EditLoanItemModel> editLoanItemList;

EditLoanModel copyWith({List<EditLoanItemModel>? editLoanItemList}) { return EditLoanModel(
editLoanItemList : editLoanItemList ?? this.editLoanItemList,
); } 
@override List<Object?> get props => [editLoanItemList];
 }
