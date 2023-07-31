import '../../../helpers/export_helper.dart';

class TitleTile extends StatelessWidget {
  final String? title;
  final Widget? tailing;

  const TitleTile({super.key, this.title = "", this.tailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class TitleTileTwo extends StatelessWidget {
  final String? title;
  final Widget? tailing;

  const TitleTileTwo({super.key, this.title, this.tailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomSheet(
                    onClosing: () {},
                    builder: (context) => const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16.0,
                      ),
                      child: Column(
                        children: [
                          ChipList(),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Row(
              children: [
                Text(
                  "Sort",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.swap_vert)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
