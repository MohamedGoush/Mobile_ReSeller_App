import '../../helpers/export_helper.dart';

class SplashScreen01 extends StatefulWidget {
  const SplashScreen01({super.key});

  @override
  State<SplashScreen01> createState() => _SplashScreen01State();
}

class _SplashScreen01State extends State<SplashScreen01> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/bg.png",
              fit: BoxFit.fill,
            ),
          ),
          const Center(
            child: Text(
              "oru\nPhones",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
