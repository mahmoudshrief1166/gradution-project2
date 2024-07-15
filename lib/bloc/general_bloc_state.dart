part of 'general_bloc_bloc.dart';

sealed class GeneralBlocState extends Equatable {
  const GeneralBlocState();

  @override
  List<Object> get props => [];
}

final class LoodingState extends GeneralBlocState {}

class LoodedState extends GeneralBlocState {
  final List<User_info>? userInfo;

  LoodedState(this.userInfo);
  @override
  List<Object> get props => [userInfo!];
}

class ErrorState extends GeneralBlocState {
  final String massage;

  ErrorState(this.massage);
  @override
  List<Object> get props => [massage];
}
