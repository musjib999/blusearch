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

  void push({required Route route}){
    Navigator.push(this, route);
  }
  void pop(){
    Navigator.pop(this);
  }

  void pushReplacement({required Route route}){
    Navigator.pushReplacement(this, route);
  }
}
