import 'package:blusearch/app/index.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Set up Your \nProfile.',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 16.sp),
        const Text(
          'Add Your Business logo',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 30.sp),
        GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              const Center(
                  child: CircleAvatar(
                      backgroundColor: AppColors.lightGrey, radius: 65),
              ),
              Padding(
                padding: EdgeInsets.only(top: 73.sp, left: 51.5.w),
                child: const Icon(Icons.camera_alt),
              ),
            ],
          ),
        ),
        SizedBox(height: 50.sp),
        Center(
            child: PrimaryButton2(
                title: 'Next',
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear,
                  );
                },
            ),
        ),
        SizedBox(height: 20.h),
        Center(
          child: Image.asset(
            AppAsset.appLogo,
            width: 30.w,
            height: 42,
          ),
        ),
      ],
    );
  }
}
