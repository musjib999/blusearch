
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
      height: 43,
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

class PrimaryButton2 extends StatelessWidget {
  final String title;
  final double? width;

  final void Function()? onTap;
  final Color? color;
  const PrimaryButton2(
      {Key? key,
        required this.title,
        required this.onTap,
        this.width,
        this.color = AppColors.primaryColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 43,
        width: width ?? 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.5),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
