import 'package:blusearch/app/index.dart';

extension BuildContextX on BuildContext {
  void showAppDialog({required Widget content}) {
    showDialog(
      builder: (context) => AlertDialog(
        content: content,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      context: this,
    );
  }
}
