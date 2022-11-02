import 'dart:async';
import 'package:blusearch/app/index.dart';

class VerifiedScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(
    builder: (_) => const VerifiedScreen(),
  );
  const VerifiedScreen({Key? key}) : super(key: key);

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, HomeBottomNavigation.route(screens: investorMenu));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: [
                SvgPicture.asset(
                  AppAsset.welcomeSvg,
                  width: 60.w,
                ),
                Center(
                  child: Text(
                    'Welcome on board!',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              child: Image.asset(
                AppAsset.appLogo,
                width: 30.w,
                height: 42,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
