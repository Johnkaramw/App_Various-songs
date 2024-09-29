import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class RagepAlama extends StatelessWidget {
  const RagepAlama({super.key});
  
  final List<Songs> music = const [
    Songs(text: 'ابتدى عمرى'),
    Songs(text: 'احساس غريب'),
    Songs(text: 'احلى نار'),
    Songs(text: 'اشتقتلك انا'),
    Songs(text: 'اشتقنالك'),
    Songs(text: 'الحب الكبير'),
    Songs(text: 'الى بعيد'),
    Songs(text: 'المعادلة الصعبه'),
    Songs(text: 'الهديه'),
    Songs(text: 'انا حبيبك'),
    Songs(text: 'انت يغالى'),
    Songs(text: 'بحن عليكى'),
    Songs(text: 'برافو عليكى'),
    Songs(text: 'بعيش'),
    Songs(text: 'بعشقك'),
    Songs(text: 'بسحب كلمتى'),
    Songs(text: 'دا الى يرضيك يرضينى'),
    Songs(text: 'حنيت لك'),
    Songs(text: 'حبيبى ياناسى'),
    Songs(text: 'حبيبى سامعنى'),
    Songs(text: 'جميل يا غرام'),
    Songs(text: 'دى ليله ورد'),
    Songs(text: 'راجع لعيونك'),
    Songs(text: 'سر حبى فيك'),
    Songs(text: 'سنين رايحه'),
    Songs(text: 'سيد الغالين'),
    Songs(text: 'شو السر الى فيك'),
    Songs(text: 'صباحية حد'),
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
