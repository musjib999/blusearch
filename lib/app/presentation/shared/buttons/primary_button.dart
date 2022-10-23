
import '../../../configs/configs.dart';
import '../../../utils/themes/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final double? width;
  final RoundedLoadingButtonController controller;

  final void Function()? onTap;
  final Color? color;
  const PrimaryButton(
      {Key? key,
        required this.controller,
        required this.title,
        required this.onTap,
        this.width,
        this.color = AppColors.primaryColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      controller: controller,
      height: 45,
      width: width ?? 200,
      borderRadius: 21.5,
      color: color,
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
      ),
    );
  }
}
