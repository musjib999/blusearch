import 'package:blusearch/app/index.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.notifications,
              color: AppColors.inputGrey,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAsset.noDataSvg, width: 50.w,),
            Text('No chat found', style: GoogleFonts.montserrat(fontSize: 17, fontWeight: FontWeight.w400),),
            SizedBox(height: 20.sp),
            PrimaryButton2(title: 'CHAT NOW', onTap: (){},),
          ],
        ),
      ),
    );
  }
}
