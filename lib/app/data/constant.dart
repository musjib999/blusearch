import 'package:blusearch/app/configs/configs.dart';

class AppAsset{
  static const String appLogo = 'assets/images/logo.png';
}

enum SnackBarStatus{
  success, error
}

extension SnackBarStatusX on SnackBarStatus{
  bool get isSuccess => this == SnackBarStatus.success;
  bool get isError => this == SnackBarStatus.error;
}

List<Widget> menu = [
  Container(),
  Container(),
  Container(),
  Container(),
  Container()
];