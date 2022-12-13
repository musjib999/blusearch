import 'package:blusearch/app/index.dart';

class CreatedStock extends StatelessWidget {
  final StockModel stock;
  static Route route({required StockModel stock}) => MaterialPageRoute(
    builder: (_) => CreatedStock(stock: stock),
  );
  const CreatedStock({Key? key, required this.stock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              stock.business.image,
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
                          const InvestmentCategoryTag(
                            title: 'TOP NOTCH BRAND',
                            backgroundColor: AppColors.primaryColor,
                            titleColor: AppColors.white,
                            fontSize: 8,
                            marginRight: 0,
                          ),
                          SizedBox(height: 3.sp),
                          SizedBox(
                            width: 50.w,
                            child: Text(
                              stock.business.name,
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
                        'Active',
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
                      RoundedBorderCard(title: 'Unit Price', value: 'N${stock.amount} per unit'),
                      SizedBox(width: 12.sp),
                      RoundedBorderCard(title: 'Units Bought', value: stock.stock.toString()),
                    ],
                  ),
                  SizedBox(height: 12.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedBorderCard(title: 'Expected Return', value: '${stock.percentage}% returns in ${stock.duration}'),
                      SizedBox(width: 12.sp),
                      const RoundedBorderCard(title: 'Maturity Date', value: '3rd of February, 2023'),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );;
  }
}
