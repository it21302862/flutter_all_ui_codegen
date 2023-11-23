import 'package:ai_beds_all_ui/screens/chat_ui/chat_history_card.dart';
import 'package:flutter/material.dart';

class ChatHistoryScreen extends StatefulWidget {
  const ChatHistoryScreen({super.key});

  @override
  State<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        // title: Container(
          // width: MediaQuery.of(context).size.width * 0.8,
          // margin: const EdgeInsets.only(left:30,top:5,right: 5,bottom: 5), // Adjust the margin 
          //  // Adjust the padding 
          //   child: const Text(
          //     'Chat History',
          //     style: TextStyle(color: Colors.black, fontSize: 20),
          //   ),
          title: const Text(
            'Chat History',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          centerTitle: true, // Center the title
        
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: const [
          ChatHistoryCard(),
          ChatHistoryCard(),
          ChatHistoryCard()
        ],
      ),
    );
  }
}
