import 'package:intl/intl.dart';

import '../../../helpers/export_helper.dart';

class MobileCard extends StatelessWidget {
  final ListingsModel? listings;
  final double? cardHeight;

  const MobileCard({super.key, this.listings, this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: cardHeight! / 2.4,
              child: Image.network(listings!.defaultImage!.fullImage!),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            NumberFormat.currency(locale: "HI", symbol: '₹ ')
                .format(listings!.listingNumPrice!)
                .toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            listings!.model!,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                listings!.deviceStorage!,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                ),
              ),
              const Spacer(),
              Text(
                listings!.deviceCondition!,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                listings!.listingLocation!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                ),
              ),
              Spacer(),
              Text(
                listings!.listingDate!.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// ElevatedButton(
//   onPressed: () {
//     HTTP.post(
//       url: AppConstants.searchAPI,
//       body: {"searchModel": "Apple iPhone"},
//     );
//   },
//   child: Text("Search Model"),
// ),
// ElevatedButton(
//   onPressed: () async {

//   },
//   child: Text("Get Filters"),
// ),
//   ElevatedButton(
//     onPressed: () async {
//       ElevatedButton.icon(
//         onPressed: () {},
//         icon: Icon(Icons.home),
//         label: Text(""),
//       );
//       var url = AppConstants.listingsAPI;
//       var uri = Uri.parse(url);
//       var response = await http.get(
//         uri,
//       );

//       var listingCoreModel = jsonDecode(response.body.toString());
//       var listingsModelData = listingCoreModel["listings"];
//       var status = listingCoreModel["message"];

//       if (status == AppConstants.filterStatus) {
//         for (var listings in listingsModelData) {
//           listingsModel.add(ListingsModel.fromJson(listings));
//         }
//       } else {
//         print("Error");
//       }
//       print(listingsModel[0].defaultImage!.fullImage);
//       setState(() {
//         _images = listingsModel[0].defaultImage!.fullImage!;
//       });
//     },
//     child: Text("Get Listings"),
//   ),
