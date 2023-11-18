import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/dimens.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_cubit.dart';
import 'package:mobile_test/presentation/screen/joke_screen/cubit/joke_state.dart';

///Created by Nguyen Huu Tuong on 18/11/2023.
class JokeAppBarWidget extends StatelessWidget {
  const JokeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        return Container(
          padding:  EdgeInsets.symmetric(horizontal: Dimens.getProportionalScreenHeight(context, 16)),
          height:  Dimens.getProportionalScreenHeight(context, 56),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                state.urlLogoAppBar ?? '',
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.titleAppBar ?? '', style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      )),
                      Text(state.contentAppBar ?? '',
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      ),
                    ],
                  ),
                   SizedBox(
                    width: Dimens.getProportionalScreenWidth(context, 8),
                  ),
                  SizedBox(
                    width:  Dimens.getProportionalScreenWidth(context, 40), // Adjust the width and height as needed
                    height:  Dimens.getProportionalScreenWidth(context, 40),
                    child: ClipOval(
                      child: Image.asset(
                        state.urlAvtAppBar ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  // Assets.images.arrowDown.image(width: 20, height: 20),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
