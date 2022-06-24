import 'package:f_pract_bootcamp/quizzer/question-model.dart';

class ListQuestion {
  int _numQuestion = 0;
  List<Question> _questions = [
    Question(text: 'Flutter is better than react native ?', answer: true),
    Question(text: "Wordpress is better than shopify ?", answer: true),
    Question(text: "Php will go disappear ?", answer: false),
    Question(text: "Nodejs is better than python ?", answer: false),
  ];

  void nextQuestion() {
    if (_numQuestion < _questions.length - 1) {
      _numQuestion++;
    }
  }

  String getQuestion() {
    return _questions[_numQuestion].text.toString();
  }

  bool getAnswer() {
    return _questions[_numQuestion].answer;
  }

/** 0 - 3
 * 1 - 3
 * 2 - 3
 * 3 - 3
 */
  bool isFinished() {
    if (_numQuestion >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _numQuestion = 0;
  }
}
