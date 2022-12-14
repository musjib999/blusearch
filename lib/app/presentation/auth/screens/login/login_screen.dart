import 'package:blusearch/app/index.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
    builder: (_) => const Login(),
  );

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RoundedLoadingButtonController loginBtn = RoundedLoadingButtonController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(context: context, title: 'LOGIN', icon: Icons.login),
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
                  SizedBox(height: 20.sp),
                  Column(
                    children: [
                      AppTextField(
                        controller: email,
                        hintText: 'Email Address',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      AppTextField(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.montserrat(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      PrimaryButton(
                        title: 'LOGIN',
                        controller: loginBtn,
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            loginBtn.stop();
                            Navigator.pushReplacement(context, HomeBottomNavigation.route(screens: investorMenu),);
                          } else {
                            loginBtn.stop();
                          }
                        },
                      ),
                      SizedBox(height: 15.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400),),
                          GestureDetector(onTap: () => Navigator.push(context, RegisterUserType.route()), child: Text('Sign Up', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryColor),)),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Image.asset(AppAsset.appLogo, width: 30.w, height: 42,)
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
