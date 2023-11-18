import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/source/models/data_joke.dart';
@RoutePage()
class JokeScreen extends StatefulWidget {
  const JokeScreen({super.key});

  @override
  _JokeScreenState createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  // List<DataJoke> jokes = [
  //   DataJoke(
  //     text:
  //         """A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family." """,
  //   ),
  //   DataJoke(
  //     text:
  //         """Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!" """,
  //   ),
  //   DataJoke(
  //     text:
  //         """The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'""",
  //   ),
  //   DataJoke(
  //       text:
  //           """A housewife, an accountant and a lawyer were asked "How much is 2+2?"The housewife replies: "Four!".  The accountant says: "I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"
  //   """),
  // ];
  List<DataJoke> jokes = [
    DataJoke(
      text:
       '1'  ),
    DataJoke(
      text:
         '2'    ),
    DataJoke(
      text:
        '3'   ),
    DataJoke(
        text:
           '4'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              jokes[currentIndex].text,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    recordVote(true); // Like button pressed
                    showNextJoke();
                  },
                  child: Text('Like'),
                ),
                ElevatedButton(
                  onPressed: () {
                    recordVote(false); // Dislike button pressed
                    showNextJoke();
                  },
                  child: Text('Dislike'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showNextJoke() {
    setState(() {
      currentIndex = (currentIndex + 1) % jokes.length;
      if (currentIndex == 0) {
        // Display a message when all jokes have been shown
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('That\'s all the jokes for today!'),
              content: Text('Come back another day!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  void recordVote(bool liked) {
    jokes[currentIndex].isLiked = liked;
    print('User voted: ${liked ? 'Like' : 'Dislike'}');
  }
}
