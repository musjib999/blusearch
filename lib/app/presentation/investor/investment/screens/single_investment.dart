import 'package:blusearch/app/index.dart';

class SingleInvestment extends StatelessWidget {
  final InvestmentModel investment;
  static Route route({required InvestmentModel investment}) => MaterialPageRoute(
    builder: (_) => SingleInvestment(investment: investment),
  );
  const SingleInvestment({Key? key, required this.investment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investments'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.notifications,
              color: AppColors.inputGrey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              investment.image,
              height: 30.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
            Container(
              margin: EdgeInsets.all(15.sp),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InvestmentCategoryTag(
                            title: investment.businessType.toUpperCase(),
                            backgroundColor: AppColors.primaryColor,
                            titleColor: AppColors.white,
                            fontSize: 8,
                            marginRight: 0,
                          ),
                          SizedBox(height: 3.sp),
                          SizedBox(
                            width: 50.w,
                            child: Text(
                              investment.busniessName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.montserrat(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        investment.status.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.successGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RoundedBorderCard(title: 'Unit Price', value: 'N10,000 per unit'),
                      SizedBox(width: 12.sp),
                      const RoundedBorderCard(title: 'Units Bought', value: '5'),
                    ],
                  ),
                  SizedBox(height: 12.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RoundedBorderCard(title: 'Expected Return', value: '15% returns in 6 months'),
                      SizedBox(width: 12.sp),
                      const RoundedBorderCard(title: 'Maturity Date', value: '3rd of February, 2023'),
                    ],
                  ),
                  SizedBox(height: 25.sp),
                  PrimaryButton2(title: 'ABOUT BUSINESS', onTap: (){},),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
