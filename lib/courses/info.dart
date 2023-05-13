class Coures{
  static final itemsco =[
  Info(
    id: 1,
    name: "Flutter",
    description: "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.",
    image: "assets/images/gf.png",
    link: "https://flutter.dev/", ),
  ];
}

class Info {
  final int id;
  final String name;
  final String description;
  final String image;
  final String link;

  Info({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.link,
  });
}