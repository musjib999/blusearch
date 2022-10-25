import 'package:intl/intl.dart';

String numberFormatter(double number){
  NumberFormat formatter = NumberFormat.currency(symbol: '');
  return formatter.format(number);
}
