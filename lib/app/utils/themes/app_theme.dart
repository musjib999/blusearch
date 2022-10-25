import '../../configs/configs.dart';
import '../../utils/themes/themes.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextTheme(bodyText2: GoogleFonts.montserrat(), headline2: GoogleFonts.montserrat(), bodyText1: GoogleFonts.montserrat()),
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: AppColors.primaryColor.withOpacity(0.3),
    labelTextStyle: MaterialStateProperty.all(
      GoogleFonts.montserrat(fontSize: 12),
    ),
  ),
  scaffoldBackgroundColor: AppColors.bgColor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.bgColor,
    titleTextStyle: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.black),
  ),
);
