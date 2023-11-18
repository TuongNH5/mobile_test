import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';
import 'package:mobile_test/configs/constants/values/dimens.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_cubit.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_state.dart';

///Created by Nguyen Huu Tuong on 18/11/2023.
class JokeButtonWidget extends StatefulWidget {
  const JokeButtonWidget({super.key});

  @override
  State<JokeButtonWidget> createState() => _JokeButtonWidgetState();
}

class _JokeButtonWidgetState extends State<JokeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        final allJokesRead = state.allJokesRead ?? false;
        return Visibility(
          visible: allJokesRead == false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              JokeButtonSelectWidget(
                color: AppColors.blue,
                title: 'This is Funny!',
                onTap:allJokesRead== false
                    ? () {
                        context.read<JokeCubit>().emitCurrentIndex();
                        if (context.read<JokeCubit>().state.currentIndex == 0) {
                          context.read<JokeCubit>().emitAllJokesRead();
                        }
                      }
                    : null,
              ),
              JokeButtonSelectWidget(
                color: AppColors.green,
                title: 'This is not funny.',
                onTap: allJokesRead == false
                    ? () {
                        context.read<JokeCubit>().emitCurrentIndex();
                        if (context.read<JokeCubit>().state.currentIndex == 0) {
                          context.read<JokeCubit>().emitAllJokesRead();
                        }
                      }
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}

class JokeButtonSelectWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Function()? onTap;

  const JokeButtonSelectWidget({super.key, required this.color, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: Dimens.getScreenWidth(context) * 0.32,
        decoration: BoxDecoration(
          color: color,
          // borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: CupertinoColors.white),
          ),
        ),
      ),
    );
  }
}
