import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/cubit/message/message_cubit.dart';
import 'package:sipas/data/model/message.dart';
import 'package:sipas/pages/widget/loading_widget.dart';

class ChatPages extends StatefulWidget {
  const ChatPages({Key? key}) : super(key: key);

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  bool isLoading = false;
  @override
  void initState() {
    context.read<MessageCubit>().getMessage();
    super.initState();
  }

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
            child: BlocConsumer<MessageCubit, MessageState>(
              listener: (context, state) {
                if (state is GetMessageEror) {
                  Navigator.pushNamed(context, "/eror", arguments: state.text);
                } else if (state is GetMessageLoading ||
                    state is PostMessageLoading) {
                  setState(() {
                    isLoading = true;
                  });
                } else {
                  setState(() {
                    isLoading = false;
                  });
                }
              },
              builder: (context, state) {
                if (state is GetMessageLoading) {
                  return const LoadingWidget();
                } else if (state is GetMessageDontHave) {
                  return Container();
                } else if (state is PostMessageSucces) {
                  Message lasItem = listMessage.last;
                  lasItem.message = state.text;
                }
                return GroupedListView<Message, DateTime>(
                    padding: const EdgeInsets.all(8),
                    reverse: true,
                    order: GroupedListOrder.DESC,
                    floatingHeader: true,
                    elements: listMessage,
                    groupBy: (message) => DateTime(
                          message.createdAt.year,
                          message.createdAt.month,
                          message.createdAt.day,
                        ),
                    groupHeaderBuilder: (Message message) => Center(
                          child: DateChip(
                            date: message.createdAt,
                            color: greyWhite,
                          ),
                        ),
                    itemBuilder: (context, Message message) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: BubbleSpecialThree(
                            text: message.message,
                            color: message.isSentByMe ? blueColor : greyWhite,
                            tail: true,
                            isSender: message.isSentByMe,
                            textStyle: TextStyle(
                                color: message.isSentByMe
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                          ),
                        ));
              },
            ),
          ),
          IgnorePointer(
            ignoring: isLoading,
            child: MessageBar(
              messageBarColor: whiteColor,
              sendButtonColor: greyColor,
              onSend: (String message) {
                setState(() {
                  listMessage.add(Message(
                    id: listMessage.length + 1,
                    message: message,
                    fkOrtuId: 997,
                    createdAt: DateTime.now(),
                    isSentByMe: true,
                  ));

                  listMessage.add(Message(
                    id: listMessage.length + 1,
                    message: "Catas sedang mengetik",
                    fkOrtuId: 997,
                    createdAt: DateTime.now(),
                    isSentByMe: false,
                  ));
                });
                context.read<MessageCubit>().postMessage(message);
              },
            ),
          )
        ],
      ),
    );
  }
}
