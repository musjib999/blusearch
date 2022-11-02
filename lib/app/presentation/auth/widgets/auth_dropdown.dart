import 'package:blusearch/app/configs/configs.dart';

class AuthDropdown extends StatelessWidget {
  final String? Function(dynamic)? validator;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChanged;
  final String label;
  const AuthDropdown(
      {Key? key,
      required this.items,
      required this.onChanged,
      required this.label,
      this.validator,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: validator,
      items: items,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
