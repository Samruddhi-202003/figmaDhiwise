// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_bloc.dart';

/// Represents the state of MyBadiBahen in the application.
class MyBadiBahenState extends Equatable {
  MyBadiBahenState({
    this.rs300027Controller,
    this.myBadiBahenModelObj,
  });

  TextEditingController? rs300027Controller;

  MyBadiBahenModel? myBadiBahenModelObj;

  @override
  List<Object?> get props => [
        rs300027Controller,
        myBadiBahenModelObj,
      ];
  MyBadiBahenState copyWith({
    TextEditingController? rs300027Controller,
    MyBadiBahenModel? myBadiBahenModelObj,
  }) {
    return MyBadiBahenState(
      rs300027Controller: rs300027Controller ?? this.rs300027Controller,
      myBadiBahenModelObj: myBadiBahenModelObj ?? this.myBadiBahenModelObj,
    );
  }
}
