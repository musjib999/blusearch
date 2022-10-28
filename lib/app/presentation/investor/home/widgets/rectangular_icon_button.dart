import 'package:blusearch/app/index.dart';

class RectangularIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const RectangularIconButton(
      {super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Icon(icon, color: AppColors.primaryColor, size: 28),
      ),
    );
  }
}
