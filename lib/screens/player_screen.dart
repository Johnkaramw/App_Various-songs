import 'package:flutter/material.dart';
import 'package:songs_app/models/clsses.dart';

class PlayerScreen extends StatefulWidget {
  final Songs song; // الأغنية الحالية
  final List<Songs> songs; // قائمة الأغاني
  final int initialIndex; // الفهرس الابتدائي للأغنية

  const PlayerScreen({
    Key? key,
    required this.song,
    required this.songs,
    required this.initialIndex,
  }) : super(key: key);

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool isPlaying = false;
  double duration = 0.0; // مدة الأغنية
  double currentPosition = 0.0; // الموقع الحالي في الأغنية
  bool repeat = false; // التكرار
  bool shuffle = false; // العشوائية

  @override
  void initState() {
    super.initState();
    // هنا يمكنك تهيئة القيم مثل المدة إذا كانت لديك معلومات الأغنية
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تشغيل الأغنية'), // تغيير العنوان هنا
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey.shade900, // لون الخلفية
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // صورة الأغنية
            // Image.asset(
            //   'assets/image/ramy.jpg', // ضع رابط الصورة هنا
            //   height: 100,
            //   width: 100,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 20),
            Text(
              widget.song.text, // عرض اسم الأغنية
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous, color: Colors.white),
                  onPressed: () {
                    // تنفيذ منطق الأغنية السابقة
                  },
                ),
                IconButton(
                  icon: isPlaying
                      ? const Icon(Icons.pause, color: Colors.white)
                      : const Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                    // تنفيذ منطق التشغيل/الإيقاف
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next, color: Colors.white),
                  onPressed: () {
                    // تنفيذ منطق الأغنية التالية
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: currentPosition,
              min: 0,
              max: duration,
              onChanged: (value) {
                setState(() {
                  currentPosition = value;
                });
                // تنفيذ منطق السعي
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    repeat ? Icons.repeat : Icons.repeat_one,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      repeat = !repeat;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    shuffle ? Icons.shuffle : Icons.shuffle_on,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      shuffle = !shuffle;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
