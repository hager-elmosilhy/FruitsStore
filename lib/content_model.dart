class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Bast Shop Fruit and Juice',
      image: 'assets/Fruit and Juice.png',
      discription: "sell and buy fruits and juice from\n different places "
  ),
  UnbordingContent(
      title: 'Best shop Fruit ',
      image: 'assets/Rectangle 2.png',
      discription: "get fresh and healthy fruit \n for you "
  ),
  UnbordingContent(
      title: 'Best shop Juice',
      image: 'assets/Best shop Juice.png',
      discription: "Fresh Juice and can be enjoyed by everyone "
  ),
];