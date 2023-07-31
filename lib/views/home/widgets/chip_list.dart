import '../../../helpers/export_helper.dart';

class ChipList extends StatelessWidget {
  const ChipList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Chip(
            label: Text("Apple"),
          ),
        ),
      ),
    );
  }
}
