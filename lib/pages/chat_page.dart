import 'package:flutter/material.dart';
import 'package:flutter_mini_project/model/message_model.dart';

import '../model/chat_model.dart';

class ChatPage extends StatefulWidget {
  final ChatModel chat;
  const ChatPage({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<MessageModel> listMessage = [];

  injectDumy() {
    listMessage.add(MessageModel(msg: 'ok', param: 1));
    listMessage.add(MessageModel(msg: 'test', param: 2));
  }

  @override
  void initState() {
    // TODO: implement initState
    injectDumy();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.brown[200],
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.person)),
            SizedBox(
              width: 10,
            ),
            Text(widget.chat.nama!),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),

      // ignore: deprecated_member_use
      floatingActionButton: FlatButton(
        onPressed: () {},
        child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.chat)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                reverse: true,
                itemCount: listMessage.length,
                itemBuilder: (context, i) {
                  var chat = listMessage[i];
                  return Align(
                      alignment: chat.param == 2
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        color: chat.param == 2 ? Colors.blue : Colors.orange,
                        child: Text(chat.msg!),
                      ));
                }),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
            child: Text('input chat'),
          )
        ],
      ),
    );
  }
}
