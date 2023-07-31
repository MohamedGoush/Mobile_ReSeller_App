import '../../helpers/export_helper.dart';

class ListingsModel {
  String? id;
  String? deviceCondition;
  String? listedBy;
  String? deviceStorage;
  List<ImagesModel>? images;
  DefaultImageModel? defaultImage;
  String? listingLocation;
  String? make;
  String? marketingName;
  String? mobileNumber;
  String? model;
  bool? verified;
  String? status;
  String? listingDate;
  String? deviceRam;
  String? createdAt;
  String? listingId;
  int? listingNumPrice;
  String? listingState;

  ListingsModel({
    this.id,
    this.deviceCondition,
    this.listedBy,
    this.deviceStorage,
    this.images,
    this.defaultImage,
    this.listingLocation,
    this.make,
    this.marketingName,
    this.mobileNumber,
    this.model,
    this.verified,
    this.status,
    this.listingDate,
    this.deviceRam,
    this.createdAt,
    this.listingId,
    this.listingNumPrice,
    this.listingState,
  });

  ListingsModel.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    deviceCondition = json["deviceCondition"];
    listedBy = json["listedBy"];
    deviceStorage = json["deviceStorage"];
    images =
        (json["images"] as List).map((e) => ImagesModel.fromJson(e)).toList();
    defaultImage = DefaultImageModel.fromJson(json["defaultImage"]);
    listingLocation = json["listingLocation"];
    make = json["make"];
    marketingName = json["marketingName"];
    mobileNumber = json["mobileNumber"];
    model = json["model"];
    verified = json["verified"];
    status = json["status"];
    listingDate = json["listingDate"];
    deviceRam = json["deviceRam"];
    createdAt = json["createdAt"];
    listingId = json["listingId"];
    listingNumPrice = json["listingNumPrice"];
    listingState = json["listingState"];
  }
}
