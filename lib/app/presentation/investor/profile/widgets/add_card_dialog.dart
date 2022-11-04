import 'package:blusearch/app/index.dart';

class AddCardDailog extends StatefulWidget {
  const AddCardDailog({Key? key}) : super(key: key);

  @override
  State<AddCardDailog> createState() => _AddCardDailogState();
}

class _AddCardDailogState extends State<AddCardDailog> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  RoundedLoadingButtonController addCardBtn = RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 40.h,
      margin: EdgeInsets.all(12.sp),
      child: Column(
        children: [
          Text(
            'Add Card',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 25.sp),
          AppTextField(controller: cardNumber, hintText: 'Card Number'),
          SizedBox(height: 15.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextField(controller: cvv, hintText: 'CVV', width: 28.w,),
              AppTextField(controller: expiryDate, hintText: 'Expiry Date', width: 28.w,),
            ],
          ),
          SizedBox(height: 40.sp),
          PrimaryButton(controller: addCardBtn, title: 'ADD CARD', onTap: (){},),
        ],
      ),
    );
  }
}
