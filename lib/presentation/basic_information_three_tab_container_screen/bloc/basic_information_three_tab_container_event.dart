// ignore_for_file: must_be_immutable

part of 'basic_information_three_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationThreeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationThreeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationThreeTabContainer widget is first created.
class BasicInformationThreeTabContainerInitialEvent
    extends BasicInformationThreeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
