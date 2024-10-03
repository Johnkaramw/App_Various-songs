import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class MuslimSaad extends StatelessWidget {
  const MuslimSaad({super.key});
  
  final List<Songs> music = const [
     Songs(text: 'ماحبتنيش',filsuond :''),
    Songs(text: 'متزعلش',filsuond :''),
    Songs(text: 'هنتقابل',filsuond :''),
     Songs(text: 'صعبان عليكي',filsuond :''),
    Songs(text: 'قلب فى الدفاتر',filsuond :''),
      Songs(text: 'مين كان سبب',filsuond :''),
     Songs(text: 'مش ندمان',filsuond :''),
    Songs(text: 'اتنسيت',filsuond :''),
     Songs(text: 'قبل ما اوصلك',filsuond :''),
    Songs(text: 'معادش باقي',filsuond :''),
    Songs(text: 'سكون',filsuond :''),
    Songs(text: 'علي بالي',filsuond :''),
     Songs(text: 'هنيالك',filsuond :''),
     Songs(text: 'مبينا كتير',filsuond :''),
    Songs(text: 'صباحك',filsuond :''),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // لون الخلفية موحد
        title: const Text(
          'أغانى مسلم',
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
