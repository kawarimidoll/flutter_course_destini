import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            '0: Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.',
        next1: 2,
        next2: 1),
    Story(
        storyTitle: '1: He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.',
        next1: 2,
        next2: 3),
    Story(
        storyTitle:
            '2: As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.',
        next1: 5,
        next2: 4),
    Story(
        storyTitle:
            '3: What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            '4: As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            '5: You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() => _storyData[_storyNumber].storyTitle;
  String getChoice(int num) => num == 1
      ? _storyData[_storyNumber].choice1
      : _storyData[_storyNumber].choice2;

  void nextStory(int num) {
    print('user choice: $num');
    _storyNumber = num == 1
        ? _storyData[_storyNumber].next1
        : _storyData[_storyNumber].next2;
    print('story number: $_storyNumber');
  }

  bool buttonShouldBeVisible() => _storyData[_storyNumber].choice2 != '';
}
