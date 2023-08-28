// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:samruddhi_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [basic_information_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BasicInformationEightModel extends Equatable {BasicInformationEightModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

BasicInformationEightModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return BasicInformationEightModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
