import '../../helpers/export_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.location_on,
          ),
          Icon(
            Icons.notifications_none,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Column(
            children: [
              const TitleTile(
                title: "Buy Top Brands",
              ),
              Container(
                height: 75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FilterController().brandList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 75,
                      height: 75,
                      child: Image.network(FilterController().brandList[index]),
                    ),
                  ),
                ),
              ),
              const TitleTile(
                title: "Shop By",
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: FilterController().shopList.length,
                    itemBuilder: (context, index) => ShopCard(
                      shopModel: FilterController().shopList[index],
                    ),
                  ),
                ),
              ),
              const TitleTileTwo(
                title: "Best Deals Near You",
              ),
              Expanded(
                child: Consumer<ListingsController>(
                  builder: (context, lc, child) => ListingsGrid(
                    listings: lc.listings,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
