import 'package:blusearch/app/index.dart';

class BlusearchApp extends StatelessWidget {
  const BlusearchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Blusearch',
        theme: appTheme,
        home: const SplashScreen(),
      );
    });
  }
}
