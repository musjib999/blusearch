import 'package:blusearch/app/index.dart';

class RoundedBorderCard extends StatelessWidget {
  final String title, value;
  const RoundedBorderCard({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 15.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.inputGrey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 14),),
            SizedBox(height: 5.sp),
            Text(value, style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15),),
          ],
        ),
      ),
    );
  }
}
