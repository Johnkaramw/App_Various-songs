import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import '../models/clsses.dart';

class Wigs extends StatelessWidget {
  const Wigs({Key? key}) : super(key: key);
  final List<Songs> music = const [
    Songs(text: 'البخت'),
    Songs(text: 'دورك جاى'),
    Songs(text: 'سكرتى'),
    Songs(text: 'الدنيا ايه'),
    Songs(text: 'عفاريت الاسفلت'),
    Songs(text: 'بعودة يا بلادى'),
    Songs(text: 'اللقطة'),
    Songs(text: 'كان نفسى'),
    Songs(text: 'الغسالة'),
    Songs(text: 'سالينى'),
    Songs(text: 'واحد وعشرين'),
    Songs(text: 'اسياد الصود'),
    Songs(text: 'منحوس'),
    Songs(text: 'على راحتى'),
    Songs(text: 'مش هقولك بيبى'),
    Songs(text: 'على بابا'),
    Songs(text: 'خد وهات'),
    Songs(text: 'اى تى ام'),
    Songs(text: 'باظت'),
    Songs(text: 'متواليش'),
    Songs(text: 'حلوة منك'),
    Songs(text: 'هصلا'),
    Songs(text: 'كان نفسى'),
    Songs(text: 'ب السلامة '),
    Songs(text: 'تجار حرام'),
    Songs(text: 'كيفى كده '),
    Songs(text: 'تايه'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(66, 66, 61, 61),
        title: const Text(
          'أغانى ويجز ',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 0, 0),
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: music.length,
        itemBuilder: (BuildContext context, int index) {
          return contaner(music: music[index]);
        },
      ),
    );
  }
}
