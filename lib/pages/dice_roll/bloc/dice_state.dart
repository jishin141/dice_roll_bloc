part of 'dice_bloc.dart';

sealed class DiceState extends Equatable {
  final int number = 1;
  const DiceState();

  @override
  List<Object> get props => [number];
}

final class DiceInitial extends DiceState {}

class DiceUpdated extends DiceState {
  final int number;
  const DiceUpdated({required this.number});

  @override
  List<Object> get props => [number];
}

class LoadingState extends DiceState {}
