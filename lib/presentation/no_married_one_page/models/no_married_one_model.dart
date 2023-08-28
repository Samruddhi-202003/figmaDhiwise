// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:samruddhi_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';import 'no_married_one_item_model.dart';/// This class defines the variables used in the [no_married_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NoMarriedOneModel extends Equatable {NoMarriedOneModel({this.dropdownItemList = const [], this.noMarriedOneItemList = const [], });

List<SelectionPopupModel> dropdownItemList;

List<NoMarriedOneItemModel> noMarriedOneItemList;

NoMarriedOneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<NoMarriedOneItemModel>? noMarriedOneItemList, }) { return NoMarriedOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
noMarriedOneItemList : noMarriedOneItemList ?? this.noMarriedOneItemList,
); } 
@override List<Object?> get props => [dropdownItemList,noMarriedOneItemList];
 }
