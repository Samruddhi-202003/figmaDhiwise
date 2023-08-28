// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:samruddhi_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [basic_information_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BasicInformationThreeModel extends Equatable {BasicInformationThreeModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

BasicInformationThreeModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return BasicInformationThreeModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
