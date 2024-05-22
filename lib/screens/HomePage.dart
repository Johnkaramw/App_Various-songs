import 'package:flutter/material.dart';
import '../components/Category.dart';
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
        backgroundColor: const Color.fromARGB(255, 186, 219, 187),
        title: const Center(
          child: Text(
            '🎶 أغانيك',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const Wigs();
              }));
            },
            color: Colors.black54,
            text: 'ويجز',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const AmaarHosne();
              }));
            },
            color: const Color.fromARGB(221, 0, 68, 255),
            text: 'عمار حسنى',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const AhmedKamel();
              }));
            },
            color: const Color.fromARGB(221, 8, 235, 243),
            text: 'احمد كامل ',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const MuslimSaad();
              }));
            },
            color: const Color.fromARGB(221, 14, 243, 33),
            text: 'مسلم حزين',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const RagepAlama();
              }));
            },
            color: const Color.fromARGB(221, 240, 40, 223),
            text: 'راغب علامة',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const RamySapry();
              }));
            },
            color: const Color.fromARGB(221, 217, 224, 243),
            text: 'رامى صبرى ',
          ),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const TamerAshor();
              }));
            },
            color: const Color.fromARGB(137, 3, 157, 184),
            text: '   تامر عاشور',
          ),
        ],
      ),
    );
  }
}
