import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import '../models/clsses.dart';

class Wigs extends StatelessWidget {
  const Wigs({Key? key}) : super(key: key);

  final List<Songs> music = const [
    Songs(text: 'البخت', filsuond: ''),
    Songs(text: 'دورك جاى', filsuond: ''),
    Songs(text: 'البخت', filsuond: ''),
    Songs(text: 'سكرتى', filsuond: ''),
    Songs(text: 'عفاريت الاسفلت', filsuond: ''),
    Songs(text: 'اللقطة', filsuond: ''),
    Songs(text: 'الغسالة', filsuond: ''),
    Songs(text: 'سالينى', filsuond: ''),
    Songs(text: 'واحد وعشرين', filsuond: ''),
    Songs(text: 'منحوس', filsuond: ''),
    Songs(text: 'خد وهات', filsuond: ''),
    Songs(text: 'اى تى ام', filsuond: ''),
    Songs(text: 'حلوة منك', filsuond: ''),
    Songs(text: 'هصلا', filsuond: ''),
    Songs(text: 'ب السلامة', filsuond: ''),
    Songs(text: 'كيفى كده', filsuond: ''),
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
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              child: Contaner(music: music[index]),
            );
          },
        ),
      ),
    );
  }
}
