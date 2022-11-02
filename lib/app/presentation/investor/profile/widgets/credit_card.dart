import 'package:blusearch/app/index.dart';

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final int month, year;
  const CreditCard({Key? key, required this.cardNumber, required this.month, required this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100.w,
      height: 20.h,
      margin: EdgeInsets.symmetric(vertical: 6.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: AppColors.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cardNumber, style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.lightGrey),),
          SizedBox(height: 8.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$month/$year', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.lightGrey),),
              Text('Mastercard', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.lightGrey),)
            ],
          )
        ],
      ),
    );
  }
}
