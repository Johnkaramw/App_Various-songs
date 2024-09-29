import 'package:flutter/material.dart';
import '../components/contaner.dart';
import '../models/clsses.dart';
import 'player_screen.dart'; // تأكد من استيراد الشاشة الجديدة

class AhmedKamel extends StatelessWidget {
  const AhmedKamel({super.key});

  final List<Songs> music = const [
    Songs(text: 'قولى'),
    Songs(text: 'على عينى'),
    Songs(text: 'مبقتش اخاف'),
    Songs(text: 'متزعليش'),
    Songs(text: 'قصاد بابك'),
    Songs(text: 'كان فى طفل'),
    Songs(text: 'يالليل'),
    Songs(text: 'مش شرط'),
    Songs(text: '9 ايام'),
    Songs(text: 'كان نفسى'),
    Songs(text: 'وسط الطريق'),
    Songs(text: 'زى نور'),
    Songs(text: 'ولا بننسى'),
    Songs(text: 'رحال'),
    Songs(text: 'كانسر'),
    Songs(text: 'الليل ملهوز عزيز'),
    Songs(text: 'راح البيت'),
    Songs(text: 'انتى فين'),
    Songs(text: 'مين فى دول'),
    Songs(text: 'انا عاوز انام'),
    Songs(text: 'جاوبنا يا لليل'),
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
