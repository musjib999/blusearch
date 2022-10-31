import 'package:blusearch/app/index.dart';

class AccountSettings extends StatefulWidget {
  static Route route() => MaterialPageRoute(
    builder: (_) => const AccountSettings(),
  );
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  RoundedLoadingButtonController updateBtn = RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12.sp),
          child: Column(
            children: [
              SizedBox(height: 8.sp),
              AppTextField(controller: TextEditingController(), hintText: 'Old Password', obscureText: true,),
              SizedBox(height: 8.sp),
              AppTextField(controller: TextEditingController(), hintText: 'New Password', obscureText: true,),
              SizedBox(height: 8.sp),
              AppTextField(controller: TextEditingController(), hintText: 'Confirm New Password', obscureText: true,),
              SizedBox(height: 40.sp),
              PrimaryButton(controller: updateBtn, title: 'UPDATE PASSWORD', onTap: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
