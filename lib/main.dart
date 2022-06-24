import 'package:f_pract_bootcamp/quizzer/list-question.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

//TODO: Step 3 Part B - Utilisez une instruction print pour vérifier que isFinished renvoie true lorsque vous êtes effectivement à la fin du quiz et qu'un redémarrage doit se produire.

//TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.

//TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If true, execute Part A, B, C, D.
//TODO: Step 4 Part A - show an alert using rFlutter_alert (remember to read the docs for the package!)
//HINT! Step 4 Part B is in the quiz_brain.dart
//TODO: Step 4 Part C - reset the questionNumber,
//TODO: Step 4 Part D - empty out the scoreKeeper.

//TODO: Step 5 - If we've not reached the end, ELSE do the answer checking steps below 👇

ListQuestion quizBrain = ListQuestion();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quizzer(),
    );
  }
}

class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Icon> scorePicker = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correcAnswer = quizBrain.getAnswer();

    setState(() {
      bool isFinish = quizBrain.isFinished();
      if (isFinish == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.reset();
        scorePicker = [];
      } else {
        if (correcAnswer == userPickedAnswer) {
          scorePicker.add(Icon(
            Icons.check_circle,
            color: Colors.green,
          ));
        } else {
          scorePicker.add(Icon(
            Icons.close_rounded,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  quizBrain.getQuestion(),
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
              onPressed: () {
                checkAnswer(true);
              },
              child: Text('True'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              onPressed: () {
                checkAnswer(false);
              },
              child: Text('False'),
            ),
            Row(
              children: scorePicker,
            ),
          ],
        ),
      )),
    );
  }
}
