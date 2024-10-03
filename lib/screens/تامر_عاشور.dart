import 'package:flutter/material.dart';
import 'package:songs_app/components/contaner.dart';
import 'package:songs_app/models/clsses.dart';

class TamerAshor extends StatefulWidget {
  const TamerAshor({Key? key}) : super(key: key);

  @override
  _TamerAshorState createState() => _TamerAshorState();
}

class _TamerAshorState extends State<TamerAshor> {
  final List<Songs> music = const [
    Songs(text: 'هيجيلي موجوع', filsuond: ''),
    Songs(text: 'بحبك وخايف ', filsuond: ''),
    Songs(text: 'هتوحشنا', filsuond: ''),
    Songs(text: 'تملى', filsuond: ''),
    Songs(text: 'كان موضوع', filsuond: ''),
    Songs(text: 'الفتره دى', filsuond: ''),
    Songs(text: 'خلتنى احس', filsuond: ''),
    Songs(text: 'خلينى فى حضنك', filsuond: ''),
    Songs(text: 'تيجى نتراهن', filsuond: ''),
    Songs(text: 'بقول عادى', filsuond: ''),
    Songs(text: 'مابشوفش غير', filsuond: ''),
    Songs(text: 'من غير ماحكيلك', filsuond: ''),
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
        backgroundColor: Colors.black, // توحيد لون الخلفية للـ AppBar
        title: Row(
          children: [
            const Text(
              'تامر عاشور',
              style: TextStyle(
                color: Colors.amberAccent, // لون جذاب للنص
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'بحث في الأغانى...',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                  _scrollToSong(value);
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                _scrollToSong(_searchText);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey.shade900, // لون الخلفية الأساسي للصفحة
        child: ListView.builder(
          controller: _controller,
          itemCount: music.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              child: Contaner(music: music[index]),
            );
          },
        ),
      ),
    );
  }

  void _scrollToSong(String searchText) {
    for (int i = 0; i < music.length; i++) {
      if (music[i].text.contains(searchText)) {
        _controller.animateTo(
          i * 100.0, // ارتفاع العنصر الافتراضي
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      }
    }
  }
}
