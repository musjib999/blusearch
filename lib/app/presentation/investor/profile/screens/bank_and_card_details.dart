import 'package:blusearch/app/index.dart';

class BankAndCardDetails extends StatefulWidget {
  static Route route() => MaterialPageRoute(
    builder: (_) => const BankAndCardDetails(),
  );
  const BankAndCardDetails({Key? key}) : super(key: key);

  @override
  State<BankAndCardDetails> createState() => _BankAndCardDetailsState();
}

class _BankAndCardDetailsState extends State<BankAndCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank and Card Details'),
      ),
      body: Container(
        margin: EdgeInsets.all(12.sp),
        child: ListView.builder(itemCount: 1, itemBuilder: (context, index) => const CreditCard(cardNumber: '**** **** **** 1234', month: 12, year: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
