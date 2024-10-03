import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class RamySapry extends StatelessWidget {
  const RamySapry({super.key});
  
  final List<Songs> music = const [
    Songs(text: 'غريب الحب',filsuond :''),
     Songs(text: 'يمكن خير',filsuond :''),
    Songs(text: 'ولسه ياما',filsuond :''),
    Songs(text: 'انتى جنان',filsuond :''),
    Songs(text: 'هى',filsuond :''),
    Songs(text: 'مع نفسى',filsuond :''),
     Songs(text: 'حكايات حميلة',filsuond :''),
     Songs(text: 'بيحرك فى المشاعر',filsuond :''),
    Songs(text: 'حالة اكئاب',filsuond :''), 
     Songs(text: 'عيونه قابلونى',filsuond :''),
     Songs(text: 'خلينى اشوفك تانى',filsuond :''),
    Songs(text: 'خطيرة',filsuond :''),
     Songs(text: 'مبروك علينا',filsuond :''),
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
