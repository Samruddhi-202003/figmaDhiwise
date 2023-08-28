// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:samruddhi_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [extra_child_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExtraChildOneModel extends Equatable {ExtraChildOneModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

ExtraChildOneModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return ExtraChildOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
