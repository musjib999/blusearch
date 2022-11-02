import 'package:blusearch/app/index.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome, Faith!'),
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
        margin: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(controller: TextEditingController()),
            SizedBox(height: 13.sp),
            const TotalInvestmentCard(
              title: 'Total Investments',
              amount: 384565.25,
            ),
            SizedBox(height: 20.sp),
            Text(
              'Invest Now!',
              style: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5.sp),
            SizedBox(
              height: 4.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    InvestmentCategoryTag(title: investmentCategories[index]),
                itemCount: investmentCategories.length,
              ),
            ),
            SizedBox(height: 10.sp),
            Expanded(
              child: GridView.builder(
                itemCount: MockData.investmentSuggestions.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(context, SingleInvestmentSuggestion.route(investment: MockData.investmentSuggestions[index])),
                  child: InvestmentSuggestionCard(
                    businessName: MockData.investmentSuggestions[index].busniessName,
                    investors: MockData.investmentSuggestions[index].investors,
                    amount: MockData.investmentSuggestions[index].amount,
                    image: MockData.investmentSuggestions[index].image,
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
          ],
        ),
      ),
    );
  }
}
