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
        title: Row(
          children: [
            Container(
              child: const Column(
                children: [
                  Center(
                    child: Text(
                      ' أغانيك',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const Wigs();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'ويجز',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const AmaarHosne();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'عمار حسنى',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const AhmedKamel();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'احمد كامل ',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const MuslimSaad();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'مسلم حزين',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const RagepAlama();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'راغب علامة',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const RamySapry();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: 'رامى صبرى ',
          ),
          const Divider(color: Colors.black, thickness: 1),
          Category(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const TamerAshor();
              }));
            },
            color: Color.fromARGB(136, 105, 102, 102),
            text: '   تامر عاشور',
          ),
        ],
      ),
    );
  }
}
