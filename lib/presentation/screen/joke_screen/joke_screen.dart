import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';
import 'package:mobile_test/presentation/screen/joke_screen/widgets/joke_footer_widget.dart';
import 'package:mobile_test/presentation/screen/joke_screen/widgets/joke_appbar_widget.dart';
import 'package:mobile_test/presentation/screen/joke_screen/widgets/joke_body_widget.dart';
import 'package:mobile_test/presentation/screen/joke_screen/widgets/joke_title_widget.dart';
import 'cubit/joke_cubit.dart';
import 'cubit/joke_state.dart';

@RoutePage()
class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JokeCubit(),
      child: const UIJokeScreen(),
    );
  }
}

class UIJokeScreen extends StatefulWidget {
  const UIJokeScreen({super.key});

  @override
  State<UIJokeScreen> createState() => _UIJokeScreenState();
}
class _UIJokeScreenState extends State<UIJokeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JokeCubit>().initJoke();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
            backgroundColor: AppColors.white,
            body: const SafeArea(
              child: Column(
                children: [
                  JokeAppBarWidget(),
                  JokeTitleWidget(),
                  JokeBodyWidget(),
                  JokeFooterWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
