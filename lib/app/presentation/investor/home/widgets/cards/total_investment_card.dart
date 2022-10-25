import 'package:blusearch/app/index.dart';

class TotalInvestmentCard extends StatelessWidget {
  final String title;
  final double amount;
  const TotalInvestmentCard(
      {Key? key, required this.title, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 17.5.h,
      padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 30.sp),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
            ),
          ),
          SizedBox(height: 10.sp),
          Text(
            amount.toString(),
            style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
