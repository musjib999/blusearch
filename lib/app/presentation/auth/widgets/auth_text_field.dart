import '../../../configs/configs.dart';
import '../../../utils/themes/colors.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final String? Function(String?)? validator;
  const AuthTextField({Key? key, required this.controller, required this.hintText, this.obscureText, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: hintText,
      ),
    );
  }
}
