import 'package:blusearch/app/index.dart';

class BusinessVerification extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (_) => const BusinessVerification(),
      );
  const BusinessVerification({Key? key}) : super(key: key);
  @override
  State<BusinessVerification> createState() => _BusinessVerificationState();
}

class _BusinessVerificationState extends State<BusinessVerification> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Verification'),
      ),
      body: Container(
        margin: EdgeInsets.all(12.sp),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.sp),
              SvgPicture.asset(AppAsset.cancel),
              Text(
                'Unverified',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20.sp),
              SizedBox(
                width: 80.w,
                child: Text(
                  'Upload a copy of any National Identification to verify your business (Driver’s License, Passport etc.)',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 25.sp),
              GestureDetector(onTap: () async{
                final identityCard = await mediaService.pickImage(source: ImageSource.gallery);
                setState(() {
                  image = identityCard;
                });
              }, child: AppTextField(controller: TextEditingController(), hintText: image == null ? 'Upload file' : image!.name, enabled: false, suffixIcon: Icons.camera_alt,),),
              SizedBox(height: 10.h),
              PrimaryButton2(title: 'Submit', onTap: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
