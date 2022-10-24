import '../../../configs/configs.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final double? width;
  final String? Function(String?)? validator;
  const AuthTextField({Key? key, required this.controller, required this.hintText, this.obscureText, this.validator, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100.w,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          labelText: hintText,
        ),
      ),
    );
  }
}
