part of 'general_bloc_bloc.dart';

sealed class GeneralBlocEvent extends Equatable {
  const GeneralBlocEvent();

  @override
  List<Object> get props => [];
}

class GetUserEvent extends GeneralBlocEvent {}
