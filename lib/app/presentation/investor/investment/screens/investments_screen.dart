import 'package:blusearch/app/index.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

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
      body: Container(
        margin: EdgeInsets.all(13.sp),
        child: MockData.myInvestments.isEmpty ?
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAsset.noDataSvg, width: 50.w,),
              Text('No Investment yet', style: GoogleFonts.montserrat(fontSize: 17, fontWeight: FontWeight.w400),),
              SizedBox(height: 20.sp),
              PrimaryButton2(title: 'INVEST NOW', onTap: (){},),
            ],
          ),
        ) : GridView.builder(
          itemCount: MockData.myInvestments.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.push(context, SingleInvestment.route(investment: MockData.myInvestments[index]),),
            child: InvestmentCard(
              businessName: MockData.myInvestments[index].busniessName,
              units: MockData.myInvestments[index].units,
              amount: MockData.myInvestments[index].amount,
              image: MockData.myInvestments[index].image,
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.sp,
            mainAxisSpacing: 8.sp,
            childAspectRatio: 20 / 30,
          ),
        ),
      ),
    );
  }
}
