import '../helpers/export_helper.dart';

class ListingsController extends ChangeNotifier {
  ListingsController() {
    getProducts();
  }
  List<ListingsModel> listings = <ListingsModel>[];

  void getProducts() async {
    var listingsCoreData = jsonDecode(await HTTP.getPayload(
      url: AppConstants.listingsAPI,
      payload: "limit=10&page=1",
    ));

    var listingsCore = ListingCoreModel.fromJson(listingsCoreData);
    listings = listingsCore.listings!;
    if (listingsCore.message == AppConstants.listingStatus) {
      print(listings.length);
    } else {
      print("Data Not Found");
    }
    notifyListeners();
  }
}
