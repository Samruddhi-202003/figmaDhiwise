// ignore_for_file: must_be_immutable

part of 'transaction_goal_details_bloc.dart';

/// Represents the state of TransactionGoalDetails in the application.
class TransactionGoalDetailsState extends Equatable {
  TransactionGoalDetailsState({this.transactionGoalDetailsModelObj});

  TransactionGoalDetailsModel? transactionGoalDetailsModelObj;

  @override
  List<Object?> get props => [
        transactionGoalDetailsModelObj,
      ];
  TransactionGoalDetailsState copyWith(
      {TransactionGoalDetailsModel? transactionGoalDetailsModelObj}) {
    return TransactionGoalDetailsState(
      transactionGoalDetailsModelObj:
          transactionGoalDetailsModelObj ?? this.transactionGoalDetailsModelObj,
    );
  }
}
