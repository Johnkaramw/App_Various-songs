import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class RamySapry extends StatelessWidget {
  const RamySapry({super.key});
  
  final List<Songs> music = const [
    Songs(text: 'غريب الحب'),
    Songs(text: 'اضحك مع روبى'),
    Songs(text: 'كعبك عالى'),
    Songs(text: 'ملك الفرفشه'),
    Songs(text: 'يمكن خير'),
    Songs(text: 'ولسه ياما'),
    Songs(text: 'انتى جنان'),
    Songs(text: 'هى'),
    Songs(text: 'مع نفسى'),
    Songs(text: 'مكانك فوق'),
    Songs(text: 'حكايات حميلة'),
    Songs(text: 'هموت من غيرها'),
    Songs(text: 'بيحرك فى المشاعر'),
    Songs(text: 'حالة اكئاب'),
    Songs(text: 'انتى بتهزرى'),
    Songs(text: 'لذاذة'),
    Songs(text: 'عيونه قابلونى'),
    Songs(text: 'مش مرتاحين'),
    Songs(text: 'خلينى اشوفك تانى'),
    Songs(text: 'خطيرة'),
    Songs(text: 'خليفة فى قلوبنا'),
    Songs(text: 'مبروك علينا'),
    Songs(text: 'حياتى مش تمام'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // لون الخلفية موحد
        title: const Text(
          'أغانى رامى صبرى',
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
