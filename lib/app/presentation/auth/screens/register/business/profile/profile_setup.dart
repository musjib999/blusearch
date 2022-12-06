import 'package:blusearch/app/index.dart';
import 'package:dots_indicator/dots_indicator.dart';
class ProfileSetupInfo extends StatefulWidget {
  static Route route() => MaterialPageRoute(
    builder: (_) => const ProfileSetupInfo(),
  );
  const ProfileSetupInfo({Key? key}) : super(key: key);

  @override
  State<ProfileSetupInfo> createState() => _ProfileSetupInfoState();
}

class _ProfileSetupInfoState extends State<ProfileSetupInfo> {
  double currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, HomeBottomNavigation.route(screens: businessMenu));
          }, child: const Text('Skip', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.primaryColor),),),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            DotsIndicator(
              dotsCount: 3,
              position: currentPage,
              decorator: const DotsDecorator(
                activeColor: AppColors.primaryColor,
                color: AppColors.lightGrey,
              ),
            ),
            SizedBox(height: 12.sp),
            Expanded(
              flex: 4,
              child: PageView(
                controller: pageController,
                children: const [
                   ProfilePicture(),
                   BusinessDescription(),
                   Socials(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
