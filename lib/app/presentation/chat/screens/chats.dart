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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.sp),
        child: MockData.chats.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAsset.noDataSvg,
                      width: 50.w,
                    ),
                    Text(
                      'No chat found',
                      style: GoogleFonts.montserrat(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20.sp),
                    PrimaryButton2(
                      title: 'CHAT NOW',
                      onTap: () {},
                    ),
                  ],
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  onTap: () => Navigator.push(context, Message.route(name: MockData.chats[index].name,messages: MockData.messages),),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage(MockData.chats[index].profilePic),
                  ),
                  title: Text(
                    MockData.chats[index].name,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    MockData.chats[index].message,
                    style: GoogleFonts.montserrat(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                itemCount: 4,
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.inputGrey,
                ),
              ),
      ),
    );
  }
}
