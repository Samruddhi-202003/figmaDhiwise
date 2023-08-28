// ignore_for_file: must_be_immutable

part of 'hamburger_menu_one_bloc.dart';

/// Represents the state of HamburgerMenuOne in the application.
class HamburgerMenuOneState extends Equatable {
  HamburgerMenuOneState({this.hamburgerMenuOneModelObj});

  HamburgerMenuOneModel? hamburgerMenuOneModelObj;

  @override
  List<Object?> get props => [
        hamburgerMenuOneModelObj,
      ];
  HamburgerMenuOneState copyWith(
      {HamburgerMenuOneModel? hamburgerMenuOneModelObj}) {
    return HamburgerMenuOneState(
      hamburgerMenuOneModelObj:
          hamburgerMenuOneModelObj ?? this.hamburgerMenuOneModelObj,
    );
  }
}
