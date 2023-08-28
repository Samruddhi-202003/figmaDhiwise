// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:samruddhi_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [transaction_goal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionGoalModel extends Equatable {TransactionGoalModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], });

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

TransactionGoalModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, }) { return TransactionGoalModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1];
 }
