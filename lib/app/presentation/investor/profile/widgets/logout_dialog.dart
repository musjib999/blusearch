import 'package:blusearch/app/index.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 28.h,
      margin: EdgeInsets.all(12.sp),
      child: Column(
        children: [
          Text(
            'Logout',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 25.sp),
          Text(
            'Are you sure you want to Logout?',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 15.sp),
          PrimaryButton2(
              title: 'Yes',
              onTap: () {
                context.pushReplacement(route: Login.route());
              },
              color: AppColors.lightGrey,
              width: 50.w,
          ),
          SizedBox(height: 8.sp),
          PrimaryButton2(
              title: 'No',
              onTap: () => Navigator.pop(context),
              width: 50.w,
          ),
        ],
      ),
    );
  }
}
