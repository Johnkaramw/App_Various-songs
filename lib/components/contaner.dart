import 'package:flutter/material.dart';
import 'package:songs_app/models/clsses.dart';
import 'package:songs_app/screens/player_screen.dart'; // تأكد من استخدام المسار الصحيح

class Contaner extends StatelessWidget {
  const  Contaner({required this.music});
  final Songs music;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 70,
      color:const Color.fromARGB(255, 248, 186, 186),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              music.text,
              style: const TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayerScreen(
                    song: music,
                    songs:const [], // أضف قائمة الأغاني هنا
                    initialIndex: 0, // يمكنك تغيير الفهرس إذا لزم الأمر
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
