// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'term_protected_item_model.dart';/// This class defines the variables used in the [term_protected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TermProtectedModel extends Equatable {TermProtectedModel({this.termProtectedItemList = const []});

List<TermProtectedItemModel> termProtectedItemList;

TermProtectedModel copyWith({List<TermProtectedItemModel>? termProtectedItemList}) { return TermProtectedModel(
termProtectedItemList : termProtectedItemList ?? this.termProtectedItemList,
); } 
@override List<Object?> get props => [termProtectedItemList];
 }
