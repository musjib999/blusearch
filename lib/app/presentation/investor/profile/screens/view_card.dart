import 'package:blusearch/app/index.dart';

class ViewCard extends StatefulWidget {
  final CreditCardModel card;
  static Route route({required CreditCardModel card}) => MaterialPageRoute(
    builder: (_) => ViewCard(card: card,),
  );
  const ViewCard({Key? key, required this.card}) : super(key: key);

  @override
  State<ViewCard> createState() => _ViewCardState();
}

class _ViewCardState extends State<ViewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank and Card Details'),
      ),
      body: Container(
        margin: EdgeInsets.all(12.sp),
        child: Column(
          children: [
            SizedBox(height: 8.sp),
            CreditCard(cardNumber: 1234567843217890, month: widget.card.month, year: widget.card.year),
            SizedBox(height: 35.sp),
            AppTextField(controller: TextEditingController(text: widget.card.number.toString()), hintText: 'Account Number', enabled: false,),
            SizedBox(height: 15.sp),
            AppTextField(controller: TextEditingController(text: widget.card.name), hintText: 'Account Name', enabled: false,),
            SizedBox(height: 15.sp),
            AppTextField(controller: TextEditingController(text: widget.card.bank), hintText: 'Bank Name', enabled: false,),
          ],
        ),
      ),
    );
  }
}
