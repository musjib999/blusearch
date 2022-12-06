import 'package:blusearch/app/index.dart';
class BusinessDescription extends StatelessWidget {
  const BusinessDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController description = TextEditingController();
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
            'Add a description of Your business of not less than 200 words.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30.sp),
          AppTextField(
            controller: description,
            hintText: 'Business Description',
            validator: (value) {
              if (value!.isEmpty) {
                return 'description is required';
              }else if (value.length < 500){
                return 'words have to be at least 200';
              }
              return null;
            },
          ),
          SizedBox(height: 15.h),
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
      ),
    );
  }
}
