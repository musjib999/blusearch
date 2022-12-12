import 'package:blusearch/app/index.dart';

class BusinessInformation extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (_) => const BusinessInformation(),
      );
  const BusinessInformation({Key? key}) : super(key: key);

  @override
  State<BusinessInformation> createState() => _BusinessInformationState();
}

class _BusinessInformationState extends State<BusinessInformation> {
  TextEditingController businessName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  RoundedLoadingButtonController saveBtn = RoundedLoadingButtonController();
  bool enableTextFields = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      businessName.text = 'Faidu Cakes ‘N’ Delicacies';
      phone.text = '+234 8115049208';
      email.text = 'faithdanieloluwafemi@gmail.com';
      address.text = '11, Herbert Macauly Way, Yaba, Lagos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Information'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              setState(() {
                enableTextFields = true;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.sp),
              AppTextField(
                controller: businessName,
                hintText: 'Business Name',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: email,
                hintText: 'Email Address',
                enabled: false,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: phone,
                hintText: 'Phone Number',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: address,
                hintText: 'Home Address',
                enabled: enableTextFields,
              ),
              SizedBox(height: 15.sp),
              Text(
                'Social Media Links',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: TextEditingController(),
                hintText: 'Facebook',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: TextEditingController(),
                hintText: 'Twitter',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: TextEditingController(),
                hintText: 'Instagram',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: TextEditingController(),
                hintText: 'LinkedIn',
                enabled: enableTextFields,
              ),
              SizedBox(height: 40.sp),
              PrimaryButton(
                controller: saveBtn,
                title: 'SAVE CHANGES',
                onTap: enableTextFields == false
                    ? null
                    : () {
                        saveBtn.stop();
                      },
                color: enableTextFields == false
                    ? AppColors.inputGrey
                    : AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
