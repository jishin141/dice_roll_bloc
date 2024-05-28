import 'dart:developer';

import 'package:dice_roll_bloc/pages/dice_roll/bloc/dice_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceRollPage extends StatelessWidget {
  const DiceRollPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  BlocBuilder<DiceBloc, DiceState>(
                    builder: (context, state) {
                      // if (state is LoadingState) {
                      //   return const CircularProgressIndicator.adaptive();
                      // }
                      return Image.asset(
                        'assets/images/dice-${state.number}.png',
                        width: width * 0.5,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoButton(
                      child: const Text('Roll Dice'),
                      onPressed: () {
                        context.read<DiceBloc>().add(RollDiceEvent());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
