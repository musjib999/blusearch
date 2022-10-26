import 'package:blusearch/app/index.dart';

class SingleInvestmentSuggestion extends StatelessWidget {
  final InvestmentSuggestionModel investment;
  static Route route({required InvestmentSuggestionModel investment}) => MaterialPageRoute(
    builder: (_) => SingleInvestmentSuggestion(investment: investment),
  );
  const SingleInvestmentSuggestion({Key? key, required this.investment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(investment.busniessName),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(investment.image, height: 30.h, width: 100.w, fit: BoxFit.fill,),
            Container(
              margin: EdgeInsets.all(15.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InvestmentCategoryTag(title: investment.businessType.toUpperCase(), backgroundColor: AppColors.primaryColor, titleColor: AppColors.white, fontSize: 8, marginRight: 0,),
                      Text(investment.status.toUpperCase(), style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.successGreen),),
                    ],
                  ),
                  SizedBox(height: 5.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 50.w, child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(investment.busniessName.toUpperCase(), style: GoogleFonts.montserrat(fontSize: 19, fontWeight: FontWeight.w600,),),
                          Text('15% returns in 6 months', style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('N${investment.amount}', style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.successGreen),),
                          Text('Per Unit', style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12.sp),
                  Text('About Business', style: GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.w600),),
                  SizedBox(height: 3.sp),
                  Text(investment.description, style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, wordSpacing: 2.sp),),
                  SizedBox(height: 20.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryButton2(title: 'INVEST', onTap: (){}),
                      SizedBox(width: 5.sp),
                      RoundedIconButton(icon: Ionicons.chatbubble_ellipses, onTap: (){},),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
