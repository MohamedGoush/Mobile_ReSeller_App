import '../helpers/export_helper.dart';

class AppConstants {
  static String get searchAPI =>
      "https://dev2be.oruphones.com/api/v1/global/assignment/searchModel";

  static String get filtersAPI =>
      "https://dev2be.oruphones.com/api/v1/global/assignment/getFilters";

  static String get listingsAPI =>
      "https://dev2be.oruphones.com/api/v1/global/assignment/getListings";

  static String get filterStatus => "Filters fetched successfully";
  static String get listingStatus => "Data fetched successfully";
}

class AppColors {
  static Color get primary => const Color(0xFF2C2E43);
}
