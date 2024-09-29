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
    Songs(text: 'ب السلامة'),
    Songs(text: 'تجار حرام'),
    Songs(text: 'كيفى كده'),
    Songs(text: 'تايه'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // لون الخلفية موحد
        title: const Text(
          'أغانى ويجز',
          style: TextStyle(
            color: Colors.amberAccent, // اللون الذهبي للنص
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade900, // الخلفية الداكنة للصفحة
        child: ListView.builder(
          itemCount: music.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              child: Contaner(music: music[index]),
            );
          },
        ),
      ),
    );
  }
}
