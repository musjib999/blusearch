import 'package:blusearch/app/index.dart';

class RegisterUserType extends StatefulWidget {
  const RegisterUserType({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
        builder: (_) => const RegisterUserType(),
      );

  @override
  State<RegisterUserType> createState() => _RegisterUserTypeState();
}

class _RegisterUserTypeState extends State<RegisterUserType> {
  UserType? selectedType;
  List<UserTypeModel> userType = [
    UserTypeModel(type: UserType.investor, hint: 'I\'m an Investor'),
    UserTypeModel(type: UserType.business, hint: 'I\'m a Business Owner')
  ];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(
          context: context, title: 'SIGN UP', icon: Ionicons.person_add),
      body: SafeArea(
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
                    Text(
                      'Kindly select your user type from the options below to proceed',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 20),
                    AuthDropdown(
                      validator: (value){
                        if(value == null){
                          return 'Please select user type';
                        }
                        return null;
                      },
                        items: userType.map((type) => DropdownMenuItem(value: type.type, child: Text(type.hint),)).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedType = value;
                          });
                        },
                        label: 'User Type',
                    ),
                    SizedBox(height: 6.h),
                    PrimaryButton2(
                      title: 'PROCEED',
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, selectedType!.isInvestor ? RegisterInvestor.route() : RegisterBusiness.route());
                        }
                      },
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            'Login',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                            ),
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
    );
  }
}
