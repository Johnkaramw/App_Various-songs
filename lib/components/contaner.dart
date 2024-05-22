import 'package:flutter/material.dart';

import '../models/clsses.dart';

class contaner extends StatelessWidget {
  const contaner({required this.music});
  final Songs music;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 60,
      color: Color.fromARGB(255, 248, 186, 186),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                music.text,
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 10,
          ),
          const Icon(Icons.play_arrow),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
