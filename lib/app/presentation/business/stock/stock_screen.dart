import 'package:blusearch/app/index.dart';

class Stock extends StatefulWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  bool hasStock = false;
  RoundedLoadingButtonController create = RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investment'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12.sp),
          child: hasStock == false
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAsset.noDataSvg,
                      width: 50.w,
                    ),
                    Text(
                      'No Investment yet',
                      style: GoogleFonts.montserrat(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20.sp),
                    PrimaryButton2(
                      title: 'Create a stock',
                      onTap: () {
                        setState(() {
                          hasStock = true;
                        });
                      },
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ShadowedCard(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20.sp),
                            const Text(
                              'Create Stock',
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 20.sp),
                            AppTextField(
                                controller: TextEditingController(),
                                hintText: 'Amount per stock'),
                            SizedBox(height: 20.sp),
                            AppTextField(
                                controller: TextEditingController(),
                                hintText: 'Percentage (%) Return'),
                            SizedBox(height: 20.sp),
                            AppTextField(
                                controller: TextEditingController(),
                                hintText: 'Duration'),
                            SizedBox(height: 20.sp),
                            AppTextField(
                                controller: TextEditingController(),
                                hintText: 'Total Stock'),
                            SizedBox(height: 30.sp),
                            PrimaryButton(
                              controller: create,
                              title: 'Create',
                              onTap: () {
                                create.stop();
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class ShadowedCard extends StatelessWidget {
  final Widget child;
  const ShadowedCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: 85.w,
      padding: EdgeInsets.all(12.0.sp),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
              color: AppColors.lightGrey,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3)),
        ],
      ),
      child: child,
    );
  }
}
