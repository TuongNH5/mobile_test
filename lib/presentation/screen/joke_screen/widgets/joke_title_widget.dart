import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';
import 'package:mobile_test/configs/constants/values/dimens.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_cubit.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_state.dart';

///Created by Nguyen Huu Tuong on 18/11/2023.
class JokeTitleWidget extends StatelessWidget {
  const JokeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Container(
            color: AppColors.green,
            width: double.infinity,
            height: Dimens.getScreenHeight(context) * 0.16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(state.textTitle ?? '', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white
                )),
                SizedBox(height: Dimens.getProportionalScreenHeight(context, 20)),
                Text(state.textSubTitle ?? '', style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white
                )),

              ],
            ),
          ),
        );
      },
    );
  }
}
