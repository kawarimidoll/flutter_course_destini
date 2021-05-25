class Story {
  late String storyTitle;
  late String choice1;
  late String choice2;
  int next1 = 0;
  int next2 = 0;

  Story(
      {required this.storyTitle,
      required this.choice1,
      required this.choice2,
      this.next1 = 0,
      this.next2 = 0});
}
