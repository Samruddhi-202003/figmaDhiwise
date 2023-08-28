// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_two_bloc.dart';

/// Represents the state of MyBadiBahenTwo in the application.
class MyBadiBahenTwoState extends Equatable {
  MyBadiBahenTwoState({
    this.rs300027Controller,
    this.myBadiBahenTwoModelObj,
  });

  TextEditingController? rs300027Controller;

  MyBadiBahenTwoModel? myBadiBahenTwoModelObj;

  @override
  List<Object?> get props => [
        rs300027Controller,
        myBadiBahenTwoModelObj,
      ];
  MyBadiBahenTwoState copyWith({
    TextEditingController? rs300027Controller,
    MyBadiBahenTwoModel? myBadiBahenTwoModelObj,
  }) {
    return MyBadiBahenTwoState(
      rs300027Controller: rs300027Controller ?? this.rs300027Controller,
      myBadiBahenTwoModelObj:
          myBadiBahenTwoModelObj ?? this.myBadiBahenTwoModelObj,
    );
  }
}
