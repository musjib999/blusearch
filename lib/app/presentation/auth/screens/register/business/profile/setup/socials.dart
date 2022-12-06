import 'package:blusearch/app/index.dart';
class Socials extends StatelessWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Set up Your \nProfile.',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 16.sp),
          const Text(
            'Add Your Social Media Links',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20.sp),
          AppTextField(controller: TextEditingController(), hintText: 'Facebook'),
          SizedBox(height: 12.sp),
          AppTextField(controller: TextEditingController(), hintText: 'Twitter'),
          SizedBox(height: 12.sp),
          AppTextField(controller: TextEditingController(), hintText: 'Instagram'),
          SizedBox(height: 12.sp),
          AppTextField(controller: TextEditingController(), hintText: 'LinkedIn'),
          SizedBox(height: 8.h),
          Center(
            child: PrimaryButton2(
              title: 'Next',
              onTap: () {
                Navigator.pushReplacement(context, HomeBottomNavigation.route(screens: businessMenu));
              },
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: Image.asset(
              AppAsset.appLogo,
              width: 30.w,
              height: 42,
            ),
          ),
        ],
      ),
    );
  }
}
