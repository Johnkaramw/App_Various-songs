import 'package:flutter/material.dart';

 import 'احمد_كامل.dart';
import 'راغب_علامة.dart';
import 'رامى_صبرى.dart';
import 'تامر_عاشور.dart';
import 'عمار_حسنى.dart';
import 'مسلم_حزين.dart';
import 'ويجز.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Row(
          children: [
            Text(
              'أغانيك',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          buildCategoryItem(context, 'ويجز', const Wigs()),
          buildCategoryItem(context, 'عمار حسنى', const AmaarHosne()),
          buildCategoryItem(context, 'احمد كامل', const AhmedKamel()),
          buildCategoryItem(context, 'مسلم حزين', const MuslimSaad()),
          buildCategoryItem(context, 'راغب علامة', const RagepAlama()),
          buildCategoryItem(context, 'رامى صبرى', const RamySapry()),
          buildCategoryItem(context, 'تامر عاشور', const TamerAshor()),
        ],
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context, String text, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return page;
          }),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(136, 105, 102, 102),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            const Icon(
              Icons.music_note,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
