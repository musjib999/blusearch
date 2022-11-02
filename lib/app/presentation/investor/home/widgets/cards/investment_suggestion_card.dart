import 'package:blusearch/app/index.dart';

class InvestmentSuggestionCard extends StatelessWidget {
  final String businessName;
  final String image;
  final double amount;
  final int investors;
  const InvestmentSuggestionCard({Key? key, required this.businessName, required this.image, required this.amount, required this.investors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inputGrey),
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              image,
              height: 13.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 6.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(businessName, style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600),),
                      Text('15% returns in 6 months', style: GoogleFonts.montserrat(fontSize: 8, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                SizedBox(height: 10.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('N$amount', style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w600),),
                        Text('per unit', style: GoogleFonts.montserrat(fontSize: 8, fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$investors', style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w600),),
                        Text('investors', style: GoogleFonts.montserrat(fontSize: 8, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ACTIVE', style: GoogleFonts.montserrat(fontSize: 8, fontWeight: FontWeight.w500, color: AppColors.successGreen),),
                    const InvestmentCategoryTag(title: 'TOP NOTCH BRAND', backgroundColor: AppColors.primaryColor, titleColor: AppColors.white, fontSize: 8, marginRight: 0,),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
