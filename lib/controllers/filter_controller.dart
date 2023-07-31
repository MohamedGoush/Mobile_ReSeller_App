import '../helpers/export_helper.dart';

class FilterController extends ChangeNotifier {
  FilterController() {
    // getFilters();
  }
  List make = [];
  List condition = [];
  List storage = [];
  List ram = [];

  void getFilters() async {
    var filtersData = await HTTP.getPayload(
      url: AppConstants.filtersAPI,
      payload: "isLimited=true",
    );

    FiltersCoreModel coreFilter =
        FiltersCoreModel.fromJson(jsonDecode(filtersData));

    condition = coreFilter.filters!.condition!;
    make = coreFilter.filters!.make!;
    ram = coreFilter.filters!.ram!;
    storage = coreFilter.filters!.storage!;
  }

  List<String> brandList = [
    "https://pngimg.com/uploads/apple_logo/apple_logo_PNG19666.png",
    "https://cdn.freebiesupply.com/logos/large/2x/samsung-1-logo-png-transparent.png",
    "https://www.freepnglogos.com/uploads/xiaomi-png/mi-logo-png-3.png",
    "https://banner2.cleanpng.com/20180412/ysq/kisspng-vivo-logo-smartphone-branding-5acf57274b6e50.967449261523537703309.jpg",
    "https://e7.pngegg.com/pngimages/913/285/png-clipart-oneplus-5t-oneplus-6-oneplus-3-oneplus-logo-text-rectangle-thumbnail.png",
  ];
  List<ShopModel> shopList = [
    ShopModel("assets/svg/bestselling.svg", "Bestselling Mobiles"),
    ShopModel("assets/svg/verified.svg", "Verified Devices Only"),
    ShopModel("assets/svg/new.svg", "Like New Condition"),
    ShopModel("assets/svg/warranty.svg", "Phones with Warranty"),
  ];
}
