import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ChatModel> listChat = [];

  injectDumy() {
    listChat.add(ChatModel(nama: 'Nur Syah Fei', msg: 'test', time: '07.00'));
    listChat.add(ChatModel(nama: 'Farli', msg: 'test', time: 'Yesterday'));
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
        title: const Text('Chat'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
          child: SafeArea(
              child: Column(
        children: [
          Text('Chat Apps'),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text('Logout'),
          ),
        ],
      ))),
      // ignore: deprecated_member_use
      floatingActionButton: FlatButton(
        onPressed: () {},
        child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.chat)),
      ),
      body: ListView.builder(
          itemCount: listChat.length,
          itemBuilder: (context, i) {
            var chat = listChat[i];
            return Card(
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.brown[200],
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(Icons.person)),
                title: Text(chat.nama!),
                subtitle: Text(chat.msg!),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text(chat.time!), const Icon(Icons.check)],
                ),
                onTap: () {
                  // Navigator.of(context).pushNamed('/chat', arguments: chat);
                  Navigator.pushNamed(context, '/chat', arguments: chat);
                },
              ),
            );
          }),
    );
  }
}
