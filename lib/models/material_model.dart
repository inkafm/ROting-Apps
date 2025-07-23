class MaterialContentModel {
  String type;
  String value;

  MaterialContentModel({
    required this.type, // text || image
    required this.value,
  });
}

class MaterialModel {
  int id;
  String title;
  List<MaterialContentModel> contents;

  MaterialModel({
    required this.id,
    required this.title,
    required this.contents,
  });
}