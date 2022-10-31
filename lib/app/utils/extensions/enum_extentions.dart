import '../../data/data.dart';

extension SnackBarStatusX on SnackBarStatus{
  bool get isSuccess => this == SnackBarStatus.success;
  bool get isError => this == SnackBarStatus.error;
}

extension UserTypeX on UserType{
  bool get isInvestor => this == UserType.investor;
  bool get isBusiness => this == UserType.business;
}