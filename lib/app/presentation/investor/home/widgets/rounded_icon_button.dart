import 'package:blusearch/app/index.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final void Function()? onTap;
  const RoundedIconButton({Key? key, required this.icon, this.iconColor, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: AppColors.lightGrey,
        ),
        child: Icon(icon, color: iconColor ?? AppColors.primaryColor,),
      ),
    );
  }
}
