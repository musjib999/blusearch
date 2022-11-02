import 'package:blusearch/app/index.dart';

class InvestDialog extends StatefulWidget {
  const InvestDialog({super.key});

  @override
  State<InvestDialog> createState() => _InvestDialogState();
}

class _InvestDialogState extends State<InvestDialog> {
  int units = 1;
  RoundedLoadingButtonController investBtn = RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 28.h,
      margin: EdgeInsets.all(12.sp),
      child: Column(
        children: [
          Text(
            'Invest',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 25.sp),
          Text(
            'N10,000/unit',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 12.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RectangularIconButton(
                icon: Ionicons.remove,
                onTap: () {
                  if (units >= 2) {
                    setState(() {
                      units--;
                    });
                  }
                },
              ),
              Text(
                units.toString(),
                style: GoogleFonts.montserrat(
                    fontSize: 32, fontWeight: FontWeight.w800),
              ),
              RectangularIconButton(
                icon: Ionicons.add,
                onTap: () {
                  setState(() {
                    units++;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20.sp),
          PrimaryButton(
            controller: investBtn,
            title: 'INVEST',
            onTap: () {
              investBtn.success();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
