import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';
import 'package:mobile_test/configs/constants/values/dimens.dart';
import 'package:mobile_test/data/source/models/data_joke.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_cubit.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_state.dart';

import 'joke_button_widget.dart';

///Created by Nguyen Huu Tuong on 18/11/2023.
class JokeBodyWidget extends StatefulWidget {
  const JokeBodyWidget({super.key});

  @override
  State<JokeBodyWidget> createState() => _JokeBodyWidgetState();
}

class _JokeBodyWidgetState extends State<JokeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        final jokes = state.listJoke ?? [];
        final currentIndex = state.currentIndex ?? 0;
        final allJokesRead = state.allJokesRead ?? false;
        final textJokeEmpty = state.textJokeEmpty ?? '';
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimens.getScreenHeight(context) * 0.05),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    allJokesRead ? textJokeEmpty : jokes[currentIndex].text ?? '',
                    style:  const TextStyle(
                      // color: AppColors.grey,
                      height: 1.3,
                      fontSize: 16,
                    ),
                    textAlign: allJokesRead ? TextAlign.center : TextAlign.start,
                  ),
                ),
              ),
              const JokeButtonWidget(),
              SizedBox(height: Dimens.getScreenHeight(context) * 0.05),
            ],
          ),
        );
      },
    );
  }
}
