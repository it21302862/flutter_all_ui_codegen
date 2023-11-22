import 'package:flutter/material.dart';

class ChatHistoryCard extends StatelessWidget {
  const ChatHistoryCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          color: Colors.white,
          child: ListTile(
            leading: ClipOval(
              child: Image.asset(
                'assets/hotels/hotel_1.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            
            title: const Text(
              "Pullman Paris Tour Eiffel",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: const Row(
              children: [
                SizedBox(width: 3),
                Text(
                  "Can you show the more..",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
            trailing: const Text("2m ago", style: TextStyle(fontSize: 10)),
          ),
        ),
        Divider(
          color: const Color.fromARGB(255, 222, 221, 221),
          thickness: 1,
          height: 1, 
          indent: MediaQuery.of(context).size.width * 0.05, 
          endIndent:
              MediaQuery.of(context).size.width * 0.05,
        ),
      ],
    );
  }
}
