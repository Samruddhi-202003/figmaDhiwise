// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_one_bloc.dart';

/// Represents the state of MyBadiBahenOne in the application.
class MyBadiBahenOneState extends Equatable {
  MyBadiBahenOneState({
    this.rs300027Controller,
    this.myBadiBahenOneModelObj,
  });

  TextEditingController? rs300027Controller;

  MyBadiBahenOneModel? myBadiBahenOneModelObj;

  @override
  List<Object?> get props => [
        rs300027Controller,
        myBadiBahenOneModelObj,
      ];
  MyBadiBahenOneState copyWith({
    TextEditingController? rs300027Controller,
    MyBadiBahenOneModel? myBadiBahenOneModelObj,
  }) {
    return MyBadiBahenOneState(
      rs300027Controller: rs300027Controller ?? this.rs300027Controller,
      myBadiBahenOneModelObj:
          myBadiBahenOneModelObj ?? this.myBadiBahenOneModelObj,
    );
  }
}
