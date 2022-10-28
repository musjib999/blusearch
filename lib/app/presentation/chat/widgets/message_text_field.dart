import 'package:blusearch/app/configs/configs.dart';

class MessageTextField extends StatelessWidget {
  final TextEditingController controller;
  const MessageTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: 'Type a Message',
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min, // added line
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.attach_file),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
