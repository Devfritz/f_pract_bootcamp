import 'package:f_pract_bootcamp/5-destiny/story-model.dart';

class FactoryStory {
  int _numStory = 0;

  List<Story> factoryStory = [
// storyTitle: 'He nods slowly, unphased by the question.',
// choice1: 'At least he\'s honest. I\'ll climb in.',
// choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: ''),
  ];

  String getStory() {
    return factoryStory[_numStory].storyTitle.toString();
  }

  String getChoice1() {
    return factoryStory[_numStory].choice1.toString();
  }

  String getChoice2() {
    return factoryStory[_numStory].choice2.toString();
  }

  void nextStory(int choiceNumber) {
    switch (_numStory) {
      case (0):
        choiceNumber == 1 ? _numStory = 2 : _numStory = 1;
        break;
      case (1):
        choiceNumber == 1 ? _numStory = 2 : _numStory = 3;
        break;
      case (2):
        choiceNumber == 1 ? _numStory = 5 : _numStory = 4;
        break;
      default:
        restart();
    }
  }

  void restart() {
    _numStory = 0;
  }
}
