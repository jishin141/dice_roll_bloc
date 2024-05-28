part of 'dice_bloc.dart';

sealed class DiceEvent extends Equatable {
  const DiceEvent();

  @override
  List<Object> get props => [];
}

class RollDiceEvent extends DiceEvent {}
