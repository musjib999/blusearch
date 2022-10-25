import 'package:blusearch/app/configs/configs.dart';

class AppAsset{
  static const String appLogo = 'assets/images/logo.png';
  static const String welcomeSvg = 'assets/svg/welcome.svg';
}

enum SnackBarStatus{
  success, error
}

extension SnackBarStatusX on SnackBarStatus{
  bool get isSuccess => this == SnackBarStatus.success;
  bool get isError => this == SnackBarStatus.error;
}

enum UserType{
  investor, business
}

extension UserTypeX on UserType{
  bool get isInvestor => this == UserType.investor;
  bool get isBusiness => this == UserType.business;
}


List<Widget> menu = [
  Container(),
  Container(),
  Container(),
  Container(),
  Container()
];