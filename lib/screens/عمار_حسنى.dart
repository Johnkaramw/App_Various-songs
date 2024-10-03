import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class AmaarHosne extends StatelessWidget {
  const AmaarHosne({super.key});
  
  final List<Songs> music = const [
      Songs(text: 'دوكه 2',filsuond :''),
      Songs(text: 'جايز',filsuond :''),
     Songs(text: 'سكربت',filsuond :''),
    Songs(text: 'اربع سنين',filsuond :''),
     Songs(text: 'التعلب الاسود',filsuond :''),
     Songs(text: 'شخبطه',filsuond :''),
     Songs(text: 'بلاش تغني',filsuond :''),
       Songs(text: 'ويسكي',filsuond :''),
    Songs(text: 'رابع وتر',filsuond :''),
    Songs(text: 'ترام',filsuond :''),
    Songs(text: 'حالات',filsuond :''),
    Songs(text: 'اخر عازف ع الارض',filsuond :''),
     Songs(text: 'صبح',filsuond :''),
    Songs(text: 'فالصو',filsuond :''),
    Songs(text: 'عزازيل',filsuond :''),
      Songs(text: 'مسوخ',filsuond :''),
     Songs(text: 'بساط',filsuond :''),
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
