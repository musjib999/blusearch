import 'package:blusearch/app/configs/configs.dart';

import '../../../utils/themes/colors.dart';

PreferredSizeWidget authAppBar({required BuildContext context, required String title, required IconData icon}){
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    title: SizedBox(
      height: 5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.white,),
          const VerticalDivider(color: AppColors.white,),
          Text(title, style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w700),),
        ],
      ),
    ),
    toolbarHeight: 20.h,
    backgroundColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.elliptical(100.w, 56.0),
      ),
    ),
  );
}
