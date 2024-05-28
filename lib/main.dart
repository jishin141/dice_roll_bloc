import 'package:dice_roll_bloc/pages/dice_roll/bloc/dice_bloc.dart';
import 'package:dice_roll_bloc/pages/dice_roll/dice_roll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DiceRollPage(),
      ),
    );
  }
}
