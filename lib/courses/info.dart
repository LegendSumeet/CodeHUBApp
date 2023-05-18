class Coures{
  static List<Info> itemsco =[
  Info(
    id: 1,
    name: "Flutter",
    description: "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.",
    image: "assets/images/ios.png",
    link: "https://flutter.dev/" ),
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
 
 factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      link: json['link'],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "link": link,
      };

}