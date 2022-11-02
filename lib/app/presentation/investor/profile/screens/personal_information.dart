import 'package:blusearch/app/index.dart';

class PersonalInformation extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (_) => const PersonalInformation(),
      );
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  RoundedLoadingButtonController saveBtn = RoundedLoadingButtonController();
  bool enableTextFields = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      fName.text = 'Faith';
      lName.text = 'Faith';
      phone.text = '+234 8115049208';
      email.text = 'faithdanieloluwafemi@gmail.com';
      address.text = '11, Herbert Macauly Way, Yaba, Lagos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
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
            children: [
              SizedBox(height: 8.sp),
              AppTextField(
                controller: fName,
                hintText: 'First Name',
                enabled: enableTextFields,
              ),
              SizedBox(height: 8.sp),
              AppTextField(
                controller: fName,
                hintText: 'Last Name',
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
              SizedBox(height: 40.sp),
              PrimaryButton(
                controller: saveBtn,
                title: 'SAVE CHANGES',
                onTap:  enableTextFields == false ? null : () {saveBtn.stop();},
                color: enableTextFields == false ? AppColors.inputGrey: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
