import 'package:blusearch/app/index.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {super.key,
      required this.sender,
      required this.text,
      required this.isMe,
      required this.date});

  final String sender;
  final String text;
  final bool isMe;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 78.w,
            child: Material(
              borderRadius: BorderRadius.circular(16.0),
              color: isMe ? AppColors.faintBlue : AppColors.lightGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isMe
                        ? Container()
                        : Text(
                            sender,
                            style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                    SizedBox(height: 5.sp),
                    Text(
                      text,
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 1.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '${date.hour}:${date.minute}',
                          style: GoogleFonts.montserrat(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
