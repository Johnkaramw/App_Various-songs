import 'package:flutter/material.dart';
import '../components/contaner.dart';
import '../models/clsses.dart';
import 'player_screen.dart'; // تأكد من استيراد الشاشة الجديدة

class AhmedKamel extends StatelessWidget {
  const AhmedKamel({super.key});

  final List<Songs> music = const [
    Songs(text: 'قولى',filsuond :''),
    Songs(text: 'على عينى',filsuond :''),
    Songs(text: 'مبقتش اخاف',filsuond :''),
    Songs(text: 'متزعليش',filsuond :''),
    Songs(text: 'قصاد بابك',filsuond :''),
     Songs(text: 'يالليل',filsuond :''),
    Songs(text: 'مش شرط',filsuond :''),
     Songs(text: 'كان نفسى',filsuond :''),
    Songs(text: 'وسط الطريق',filsuond :''),
    Songs(text: 'زى نور',filsuond :''),
    Songs(text: 'ولا بننسى',filsuond :''),
    Songs(text: 'رحال',filsuond :''),
    Songs(text: 'كانسر',filsuond :''),
    Songs(text: 'الليل ملهوز عزيز',filsuond :''),
      Songs(text: 'جاوبنا يا لليل',filsuond :''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'أغانى احمد كامل',
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: ListView.builder(
          itemCount: music.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerScreen(
                        song: music[index],
                        songs: music,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Contaner(music: music[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
