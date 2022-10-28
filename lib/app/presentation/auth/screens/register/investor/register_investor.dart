import 'package:blusearch/app/index.dart';

class RegisterInvestor extends StatefulWidget {
  const RegisterInvestor({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
        builder: (_) => const RegisterInvestor(),
      );

  @override
  State<RegisterInvestor> createState() => _RegisterInvestorState();
}

class _RegisterInvestorState extends State<RegisterInvestor> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  RoundedLoadingButtonController loginBtn = RoundedLoadingButtonController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(
          context: context, title: 'SIGN UP', icon: Ionicons.person_add),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.sp),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AuthTextField(
                            width: 43.w,
                            controller: fName,
                            hintText: 'First Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First name is required';
                              }
                              return null;
                            },
                          ),
                          AuthTextField(
                            width: 43.w,
                            controller: lName,
                            hintText: 'Last Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First name is required';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      AuthTextField(
                        controller: email,
                        hintText: 'Email Address',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'phone number is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      AuthTextField(
                        controller: phone,
                        hintText: 'Phone Number',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'phone number is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      AuthTextField(
                        obscureText: true,
                        controller: password,
                        hintText: 'Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      AuthTextField(
                        obscureText: true,
                        controller: cPassword,
                        hintText: 'Confirm Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'confirm password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 6.h),
                      PrimaryButton(
                        title: 'SIGN UP',
                        controller: loginBtn,
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            loginBtn.stop();
                            Navigator.push(context, OtpVerification.route(email: email.text));
                          } else {
                            loginBtn.stop();
                          }
                        },
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                  context, Login.route()),
                              child: Text(
                                'Login',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.sp),
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
        ),
      ),
    );
  }
}
