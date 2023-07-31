import '../../../helpers/export_helper.dart';

class ListingsGrid extends StatelessWidget {
  final List<ListingsModel>? listings;

  const ListingsGrid({super.key, this.listings});
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var width = _size.width;
    var customheight = (_size.height) - AppBar().preferredSize.height;
    var cardHeight = (customheight / 2.8);
    return GridView.count(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      crossAxisCount: 2,
      childAspectRatio: (width / 2) / cardHeight,
      shrinkWrap: true,
      children: [
        for (var index = 0; index < listings!.length; index++)
          MobileCard(
            listings: listings![index],
            cardHeight: cardHeight,
          )
      ],
    );
  }
}
