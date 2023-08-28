// ignore_for_file: must_be_immutable

part of 'connection_lost_bloc.dart';

/// Represents the state of ConnectionLost in the application.
class ConnectionLostState extends Equatable {
  ConnectionLostState({this.connectionLostModelObj});

  ConnectionLostModel? connectionLostModelObj;

  @override
  List<Object?> get props => [
        connectionLostModelObj,
      ];
  ConnectionLostState copyWith({ConnectionLostModel? connectionLostModelObj}) {
    return ConnectionLostState(
      connectionLostModelObj:
          connectionLostModelObj ?? this.connectionLostModelObj,
    );
  }
}
