import '../../../helpers/export_helper.dart';

class ShopCard extends StatelessWidget {
  final ShopModel? shopModel;

  const ShopCard({super.key, this.shopModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: 80,
      height: 80,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(shopModel!.image!),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            shopModel!.title!,
            style: TextStyle(fontSize: 10.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
