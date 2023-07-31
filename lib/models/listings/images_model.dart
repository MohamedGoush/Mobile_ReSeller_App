class ImagesModel {
  String? fullImage;

  ImagesModel({this.fullImage});

  ImagesModel.fromJson(Map<String, dynamic> json) {
    fullImage = json["fullImage"];
  }
}
