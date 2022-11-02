import 'package:blusearch/app/configs/configs.dart';

class AppAsset{
  static const String appLogo = 'assets/images/logo.png';
  static const String welcomeSvg = 'assets/svg/welcome.svg';
  static const String business1 = 'assets/images/business1.png';
  static const String business2 = 'assets/images/business2.png';
  static const String noDataSvg = 'assets/svg/no_data.svg';
}

enum SnackBarStatus{
  success, error
}

enum UserType{
  investor, business
}


List<Widget> menu = [
  Container(),
  Container(),
  Container(),
  Container(),
  Container()
];

List<String> investmentCategories  = [
  'Fixed Income', 'Real Estate', 'Agriculture', 'Transportation'
];