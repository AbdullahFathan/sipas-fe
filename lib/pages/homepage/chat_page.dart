import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/data/constants/mesage_const.dart';

class ChatPages extends StatefulWidget {
  const ChatPages({Key? key}) : super(key: key);

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        title: Row(
          children: [
            Image.asset(
              'assets/images/catas_logo.jpg',
              height: 32,
              width: 32,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "CATAS",
              style: heading1(colorFont: whiteColor),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
                padding: const EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                floatingHeader: true,
                elements: message,
                groupBy: (message) => DateTime(
                      message.date.year,
                      message.date.month,
                      message.date.day,
                    ),
                groupHeaderBuilder: (Message message) => Center(
                      child: DateChip(
                        date: message.date,
                        color: greyWhite,
                      ),
                    ),
                itemBuilder: (context, Message message) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: BubbleSpecialThree(
                        text: message.text,
                        color: message.isSentByMe ? blueColor : greyWhite,
                        tail: true,
                        isSender: message.isSentByMe,
                        textStyle: TextStyle(
                            color: message.isSentByMe
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16),
                      ),
                    )),
          ),
          MessageBar(
            messageBarColor: whiteColor,
            onSend: (_) => print("has send"),
            sendButtonColor: greyColor,
          ),
        ],
      ),
    );
  }
}
