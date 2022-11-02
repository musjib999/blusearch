import 'package:blusearch/app/index.dart';

class Message extends StatefulWidget {
  final String name;
  final List<MessageModel>? messages;
  static Route route({required String name, List<MessageModel>? messages}) =>
      MaterialPageRoute(
        builder: (_) => Message(
          name: name,
          messages: messages ?? [],
        ),
      );
  const Message({super.key, required this.name, this.messages});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => MessageBubble(
                    sender: widget.messages![index].sender,
                    text: widget.messages![index].message,
                    isMe: widget.messages![index].sent,
                  date: DateTime.now(),
                ),
                itemCount: widget.messages!.length,
              ),
            ),
            SizedBox(
              height: 10.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 80.w,
                    child:
                        MessageTextField(controller: TextEditingController()),
                  ),
                  SizedBox(width: 0.5.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.inputGrey)),
                      child: const Center(child: Icon(Icons.send)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
