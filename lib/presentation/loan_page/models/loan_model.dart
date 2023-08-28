// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'loan_item_model.dart';/// This class defines the variables used in the [loan_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LoanModel extends Equatable {LoanModel({this.loanItemList = const []});

List<LoanItemModel> loanItemList;

LoanModel copyWith({List<LoanItemModel>? loanItemList}) { return LoanModel(
loanItemList : loanItemList ?? this.loanItemList,
); } 
@override List<Object?> get props => [loanItemList];
 }
