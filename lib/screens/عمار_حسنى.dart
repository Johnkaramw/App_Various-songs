import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class AmaarHosne extends StatelessWidget {
  const AmaarHosne({super.key});
  final List<Songs> music = const [
    Songs(text: 'هاموش'),
    Songs(text: 'كل سنة'),
    Songs(text: 'دوكه 2'),
    Songs(text: 'زار'),
    Songs(text: 'اغربه'),
    Songs(text: 'مملعن'),
    Songs(text: 'جايز'),
    Songs(text: 'فستان'),
    Songs(text: 'غامق'),
    Songs(text: 'سكربت'),
    Songs(text: 'اربع سنين'),
    Songs(text: 'حوريه'),
    Songs(text: 'التعلب الاسود'),
    Songs(text: 'لمه'),
    Songs(text: 'شخبطه'),
    Songs(text: 'وشوش'),
    Songs(text: 'بلاش تغني'),
    Songs(text: 'برد'),
    Songs(text: 'نغم'),
    Songs(text: 'مورفين'),
    Songs(text: 'ويسكي'),
    Songs(text: 'رابع وتر'),
    Songs(text: 'ترام'),
    Songs(text: 'حالات'),
    Songs(text: 'اخر عازف ع الارض'),
    Songs(text: 'طيب'),
    Songs(text: 'صبح'),
    Songs(text: 'فالصو'),
    Songs(text: 'عزازيل'),
    Songs(text: 'قلق (الأغنية المعروفة)'),
    Songs(text: 'دوكه (الأغنية المعروفة)'),
    Songs(text: 'حدود2'),
    Songs(text: 'بلوكامين'),
    Songs(text: 'طفرة'),
    Songs(text: 'مسوخ'),
    Songs(text: 'ضيعت نفسي'),
    Songs(text: 'شط طنجه'),
    Songs(text: 'هلوسه'),
    Songs(text: 'بساط'),
    Songs(text: 'سد'),
    Songs(text: 'شمع')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(66, 66, 61, 61),
        title: const Text(
          'أغانى عمار حسنى ',
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
