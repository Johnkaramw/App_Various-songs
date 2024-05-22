import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class MuslimSaad extends StatelessWidget {
  const MuslimSaad({super.key});
  final List<Songs> music = const [
    Songs(text: 'غمه'),
    Songs(text: 'انا عربي'),
    Songs(text: 'ماحبتنيش'),
    Songs(text: 'متزعلش'),
    Songs(text: 'هنتقابل'),
    Songs(text: 'سابوك في البيت'),
    Songs(text: 'صعبان عليكي'),
    Songs(text: 'قلب فى الدفاتر'),
    Songs(text: 'غصب عني'),
    Songs(text: 'لو بس نرجع'),
    Songs(text: 'عايزة اللي يفرفشلها'),
    Songs(text: 'مين كان سبب'),
    Songs(text: 'مابهتمش'),
    Songs(text: 'من كتر الهم انا خدته دوا'),
    Songs(text: 'مابهربش'),
    Songs(text: 'مش ندمان'),
    Songs(text: 'اتنسيت'),
    Songs(text: 'كل اللي في قلبي'),
    Songs(text: 'قبل ما اوصلك'),
    Songs(text: 'معادش باقي'),
    Songs(text: 'سكون'),
    Songs(text: 'علي بالي'),
    Songs(text: 'البير & مش قادر'),
    Songs(text: 'هنيالك'),
    Songs(text: 'خليكي في حضني الليله'),
    Songs(text: 'مبينا كتير'),
    Songs(text: 'صباحك'),
    Songs(text: 'يومين و عدوا')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 66, 61, 61),
        title: const Text(
          'أغانى مسلم ',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 0, 0),
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: music.length,
        itemBuilder: (BuildContext, int index) {
          return contaner(music: music[index]);
        },
      ),
    );
  }
}
