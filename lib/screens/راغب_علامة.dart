import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class RagepAlama extends StatelessWidget {
  const RagepAlama({super.key});
  
  final List<Songs> music = const [
    Songs(text: 'ابتدى عمرى',filsuond :''),
    Songs(text: 'احساس غريب',filsuond :''),
     Songs(text: 'اشتقنالك',filsuond :''),
    Songs(text: 'الحب الكبير',filsuond :''),
     Songs(text: 'انا حبيبك',filsuond :''),
    Songs(text: 'انت يغالى',filsuond :''),
    Songs(text: 'بحن عليكى',filsuond :''),
     Songs(text: 'جميل يا غرام',filsuond :''),
    Songs(text: 'دى ليله ورد',filsuond :''),
    Songs(text: 'راجع لعيونك',filsuond :''),
     Songs(text: 'سنين رايحه',filsuond :''),
    Songs(text: 'سيد الغالين',filsuond :''),
    Songs(text: 'شو السر الى فيك',filsuond :''),
    Songs(text: 'صباحية حد',filsuond :''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // لون خلفية الـ AppBar موحد
        title: const Text(
          'أغانى راغب علامة',
          style: TextStyle(
            color: Colors.amberAccent, // لون النص الذهبي
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
