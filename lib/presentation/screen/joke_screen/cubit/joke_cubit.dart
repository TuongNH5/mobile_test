import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_test/core/bloc/bloc_widget/widget_cubit.dart';
import '../../../../data/source/models/data_joke.dart';
import 'joke_state.dart';

class JokeCubit extends WidgetCubit<JokeState> {
  JokeCubit() : super(widgetState: const JokeState());
  @override
  void onWidgetCreated() {
    // TODO: implement onWidgetCreated
  }
  void emitCurrentIndex() {
    final jokes = state.listJoke ?? [];
    final currentIndex = state.currentIndex ?? 0;
    emit(state.copyWith(currentIndex: (currentIndex + 1) % jokes.length));
  }
  void emitAllJokesRead(){
    emit(state.copyWith(allJokesRead: true));
  }
  void initJoke() {
    emit(state.copyWith(
      urlAvtAppBar: 'assets/images/avt.png',
      urlLogoAppBar: 'assets/images/logo.png',
      titleAppBar: 'Handicrafted by',
      contentAppBar: 'Jim HLS',
      textJokeEmpty: 'That\'s all the jokes for today! Come back another day!',
      listJoke: [
        DataJoke(
          text:
          """A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family." """,
        ),
        DataJoke(
          text:
          """Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!" """,
        ),
        DataJoke(
          text:
          """The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'""",
        ),
        DataJoke(
            text:
            """A housewife, an accountant and a lawyer were asked "How much is 2+2?"The housewife replies: "Four!".  The accountant says: "I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"
    """),
      ],
      textTitle: 'A joke a day keeps the doctor away',
      textSubTitle: 'If you joke wrong way, your teeth have to pay. (Serious)',
      textFooter: 'This app is created as part of Hisolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
      textCopyRight: 'Copyright 2021 HLS',
    ));
  }


}
