import 'package:blusearch/app/index.dart';

class OtpVerification extends StatefulWidget {
  final String email;
  const OtpVerification({Key? key, required this.email}) : super(key: key);
  static Route route({required String email}) => MaterialPageRoute(
        builder: (_) => OtpVerification(email: email),
      );

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(
        context: context,
        title: 'VERIFICATION',
        icon: Icons.email,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.sp),
              Column(
                children: [
                  Text(
                    'An OTP has been sent to ${widget.email}, enter the code below to verify your account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 12.sp),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Email Address',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  Pinput(
                    length: 5,
                    defaultPinTheme: PinTheme(
                      width: 49,
                      height: 60,
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.inputGrey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.sp),
                  PrimaryButton2(
                    title: 'VERIFY',
                    onTap: () async {},
                  ),
                  SizedBox(height: 20.sp),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Image.asset(
                    AppAsset.appLogo,
                    width: 30.w,
                    height: 42,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
