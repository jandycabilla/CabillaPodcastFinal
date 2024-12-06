class Podcast {
  String title;
  String description;
  String imageUrl;

  Podcast({required this.title, required this.description, required this.imageUrl});
}

List<Podcast> podcastList = [
  Podcast(
      title: "Flutter Talks",
      description: "A deep dive into Flutter development.",
      imageUrl: "asset/flutter_talks.jpg"),
  Podcast(
      title: "Tech Trends",
      description: "Latest updates in technology.",
      imageUrl: "asset/jan2.png"),
      
];
