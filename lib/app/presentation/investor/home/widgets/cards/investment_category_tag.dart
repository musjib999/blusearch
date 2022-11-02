import 'package:blusearch/app/index.dart';
class InvestmentCategoryTag extends StatelessWidget {
  final String title;
  final Color? backgroundColor, titleColor;
  final double? fontSize, marginRight;

  const InvestmentCategoryTag({Key? key, required this.title, this.backgroundColor, this.titleColor, this.fontSize, this.marginRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight ?? 7.sp),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lightGrey,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(
        child: Text(title, style: GoogleFonts.montserrat(fontSize: fontSize ?? 10, fontWeight: FontWeight.w700, color: titleColor ?? AppColors.black),),
      ),
    );
  }
}
