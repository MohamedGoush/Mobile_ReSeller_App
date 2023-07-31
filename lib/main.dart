import 'helpers/export_helper.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ListingsController>(
          create: (context) => ListingsController(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen01(),
      ),
    ),
  );
}
