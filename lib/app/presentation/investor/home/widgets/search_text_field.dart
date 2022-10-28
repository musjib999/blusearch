import 'package:blusearch/app/configs/configs.dart';
import 'package:blusearch/app/utils/themes/colors.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onSearch;
  const SearchTextField({Key? key, required this.controller, this.onSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      width: 100.w,
      child: Row(
        children: [
          SizedBox(
            width: 80.w,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            width: 12.w,
            child: Container(
              height: 7.h,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                ),
              ),
              child: IconButton(
                onPressed: onSearch,
                icon: const Icon(Ionicons.search, color: AppColors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
