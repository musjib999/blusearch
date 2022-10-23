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
      appBar: AppBar(
        title: SizedBox(
          height: 5.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.login, color: AppColors.white,),
              const VerticalDivider(color: AppColors.white,),
              Text('LOGIN', style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w700),),
            ],
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 4,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100.w, 56.0),
          ),
        ),
      ),
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
                      AuthTextField(
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
                      AuthTextField(
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
                          Text('Sign Up', style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryColor),),
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
