class DefaultImageModel {
  String? fullImage;

  DefaultImageModel({this.fullImage});

  DefaultImageModel.fromJson(Map<String, dynamic> json) {
    fullImage = json["fullImage"];
  }
}
