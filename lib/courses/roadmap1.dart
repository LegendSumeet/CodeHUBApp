
class Roadmapdata {
  static List<Roadmapitems> maps2 = [
    Roadmapitems(
      id: 1,
      name: "Artificial Intelligence",
      description: "Explore the field of Artificial Intelligence and learn about various AI algorithms and applications.",
      image: "assets/images/ai.jpg",
      file: "assets/roadmaps/ai.json"
    ),
  ];
}

class Roadmapitems {
  final int id;
  final String name;
  final String description;
  final String image;
  final String file;

  Roadmapitems({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.file,
  });

  factory Roadmapitems.fromJson(Map<String, dynamic> json) {
    return Roadmapitems(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      file: json['file'],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "file": file,
      };
}
