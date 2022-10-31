import 'package:blusearch/app/index.dart';


void showSnacbar(
    {required BuildContext context,
    required String message,
    required SnackBarStatus status}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          SizedBox(
            width: 76.w,
            child: Text(
              message,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.abel(),
            ),
          ),
          status.isSuccess
              ? SizedBox(
                  width: 8.w,
                  child: const Icon(
                    Icons.done,
                    color: AppColors.successGreen,
                  ),
                )
              : status.isError
                  ? SizedBox(
                      width: 8.w,
                      child: const Icon(
                        Icons.error_outline,
                        color: AppColors.errorRed,
                      ),
                    )
                  : SizedBox(
                      width: 8.w,
                      child: const Icon(
                        Icons.warning_amber,
                        color: AppColors.warningYellow,
                      ),
                    )
        ],
      ),
    ),
  );
}
