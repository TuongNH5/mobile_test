import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';
import 'package:mobile_test/configs/constants/values/dimens.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_cubit.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_state.dart';

class JokeFooterWidget extends StatelessWidget {
  const JokeFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(bottom: Dimens.getProportionalScreenHeight(context, 10)),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 0.2,
                color: AppColors.grey,
              ),
              SizedBox(height: Dimens.getProportionalScreenHeight(context, 10)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.getProportionalScreenHeight(context, 14)),
                  child: Text(
                    state.textFooter ?? '',
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
               SizedBox(height: Dimens.getProportionalScreenHeight(context, 10)),
              Text(
                state.textCopyRight ?? '',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
