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
        backgroundColor: Colors.black, // لون الخلفية موحد
        title: const Text(
          'أغانى عمار حسنى',
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
