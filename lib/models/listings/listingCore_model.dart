import '../../helpers/export_helper.dart';

class ListingCoreModel {
  List<ListingsModel>? listings;
  String? nextPage;
  String? message;

  ListingCoreModel({
    this.listings,
    this.nextPage,
    this.message,
  });

  ListingCoreModel.fromJson(Map<String, dynamic> json) {
    listings = (json["listings"] as List)
        .map((e) => ListingsModel.fromJson(e))
        .toList();
    nextPage = json["nextPage"];
    message = json["message"];
  }
}
