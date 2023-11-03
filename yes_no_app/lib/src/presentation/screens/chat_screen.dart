import 'package:flutter/material.dart';

// Widgets.
import 'package:yes_no_app/src/presentation/widgets/chat/item_list_chat.dart';
import 'package:yes_no_app/src/presentation/widgets/generic/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
        ),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://c8.alamy.com/comp/T9CB60/happy-cartoon-monster-vector-blue-monster-illustration-halloween-design-T9CB60.jpg'
            ),
          ),
        ),
      ),
      body: const _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) => ItemListChat(
                  index: index,
                  isMyMessage: index % 2 == 0,
                )
              )
            ),

            const MessageFieldBox(),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

