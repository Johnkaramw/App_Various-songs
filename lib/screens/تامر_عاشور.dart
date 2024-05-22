import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class TamerAshor extends StatefulWidget {
  const TamerAshor({Key? key}) : super(key: key);

  @override
  _RamyAiaashState createState() => _RamyAiaashState();
}

class _RamyAiaashState extends State<TamerAshor> {
  final List<Songs> music = const [
    Songs(text: 'هيجيلي موجوع'),
    Songs(text: 'عديت'),
    Songs(text: 'اصحى للكلام'),
    Songs(text: 'بحبك وخايف '),
    Songs(text: 'هتوحشنا'),
    Songs(text: 'هى الناس'),
    Songs(text: 'تملى'),
    Songs(text: 'احنا الدنيا'),
    Songs(text: 'اقعد نتكلم'),
    Songs(text: 'كنت فين'),
    Songs(text: 'كان موضوع'),
    Songs(text: 'الفتره دى'),
    Songs(text: 'مفيش جدعنه'),
    Songs(text: 'خلتنى احس'),
    Songs(text: 'خلينى فى حضنك'),
    Songs(text: 'حنلها وانت بعيد'),
    Songs(text: 'تيجى نتراهن'),
    Songs(text: 'نعيش مع بعض'),
    Songs(text: 'بقول عادى'),
    Songs(text: 'ماتتغريش'),
    Songs(text: 'معلش اصلى مدلعها '),
    Songs(text: 'بياعه'),
    Songs(text: 'حبيبى انت حبيبى'),
    Songs(text: 'مابشوفش غير'),
    Songs(text: 'من غير ماحكيلك'),
  ];

  final ScrollController _controller = ScrollController();
  String _searchText = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 0, 0, 0),
        title: Row(
          children: [
            const Text(
              'تامر عاشور',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 30,
              ),
            ),
            Spacer(),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'بحث فى الاغانى ...',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                  _scrollToSong(value);
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _scrollToSong(_searchText);
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        controller: _controller,
        itemCount: music.length,
        itemBuilder: (BuildContext context, int index) {
          return contaner(music: music[index]);
        },
      ),
    );
  }

  void _scrollToSong(String searchText) {
    for (int i = 0; i < music.length; i++) {
      if (music[i].text.contains(searchText)) {
        _controller.animateTo(
          i * 100.0, // 100.0 is an arbitrary value for the item height
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      }
    }
  }
}
