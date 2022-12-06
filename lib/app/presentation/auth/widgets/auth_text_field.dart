import '../../../configs/configs.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final double? width;
  final bool? enabled;
  final int? maxLines;
  final String? Function(String?)? validator;
  const AppTextField({Key? key, required this.controller, required this.hintText, this.obscureText, this.validator, this.width, this.enabled = true, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100.w,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: hintText,
        ),
      ),
    );
  }
}
