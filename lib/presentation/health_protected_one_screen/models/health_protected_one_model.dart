// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listcoverneeded1_item_model.dart';/// This class defines the variables used in the [health_protected_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthProtectedOneModel extends Equatable {HealthProtectedOneModel({this.listcoverneeded1ItemList = const []});

List<Listcoverneeded1ItemModel> listcoverneeded1ItemList;

HealthProtectedOneModel copyWith({List<Listcoverneeded1ItemModel>? listcoverneeded1ItemList}) { return HealthProtectedOneModel(
listcoverneeded1ItemList : listcoverneeded1ItemList ?? this.listcoverneeded1ItemList,
); } 
@override List<Object?> get props => [listcoverneeded1ItemList];
 }
