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
          IconButton(onPressed: (){}, icon: const Icon(Ionicons.notifications, color: AppColors.inputGrey,),)
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchTextField(controller: TextEditingController()),
            SizedBox(height: 13.sp),
            const TotalInvestmentCard(title: 'Total Investments', amount: 384565.25,),
          ],
        ),
      ),
    );
  }
}
