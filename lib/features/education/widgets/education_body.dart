import 'package:flutter/material.dart';
import 'package:signfy/core/theme/colors.dart';
import 'package:signfy/core/theme/fonts.dart';

class EducationBody extends StatelessWidget {
  const EducationBody({super.key});

  // بيانات الدروس في List واحدة
  static const _lessons = <LessonItem>[
    LessonItem(
      title: 'Beginner / Level 1',
      subtitle: 'Start Your Journey With The Basics',
      progress: 0.2,
      icon: Icons.assistant_rounded,
    ),
    LessonItem(
      title: 'Intermediate / Level 2',
      subtitle: 'Start Your Journey With The Basics',
      progress: 0.4,
      icon: Icons.assistant_rounded,
    ),
    LessonItem(
      title: 'Advanced / Level 3',
      subtitle: 'Start Your Journey With The Basics',
      progress: 0.6,
      icon: Icons.assistant_rounded,
    ),
    LessonItem(
      title: 'Professional / Interpreter Level',
      subtitle: 'Start Your Journey With The Basics',
      progress: 0.8,
      icon: Icons.assistant_rounded,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const pageBg = Colors.white;
    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        title: Text(
          'Education',
          style: AppFonts.poppinsBold().copyWith(fontSize: 22),
        ),
        centerTitle: true,
        surfaceTintColor: pageBg,
        backgroundColor: pageBg,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        children: [
          const _SectionTitle('Daily Text'),
          const SizedBox(height: 8),
          const DailyTextCard(
            label: 'word of day',
            word: 'Hello',
            description: 'A Friendly and common greeting',
            assetPath: 'assets/images/hello.png', // عدّل المسار حسب مشروعك
          ),
          const SizedBox(height: 24),

          const _SectionTitle('Lessons'),
          const SizedBox(height: 8),

          // بناء الكروت المتكررة من الليست
          ..._lessons.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: LessonCard(item: e),
            ),
          ),
        ],
      ),
    );
  }
}

/*======================== Helper Widgets & Models ========================*/

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}

class DailyTextCard extends StatelessWidget {
  final String label;
  final String word;
  final String description;
  final String assetPath;

  const DailyTextCard({
    super.key,
    required this.label,
    required this.word,
    required this.description,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFDaeAF7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          // النصوص
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  word,
                  style: TextStyle(
                    color: kPrimaryDark,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // الصورة
          SizedBox(
            width: 65,
            height: 65,
            child: Image.asset(assetPath, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}

class LessonItem {
  final String title;
  final String subtitle;
  final double progress;
  final IconData icon;

  const LessonItem({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.icon,
  });
}

class LessonCard extends StatelessWidget {
  final LessonItem item;
  const LessonCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    const cardColor = Color(0xFFDaeAF7);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(item.icon, color: Colors.blueAccent),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            item.subtitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: item.progress,
            color: Colors.green,
            backgroundColor: Colors.white,
            minHeight: 10,
            borderRadius: BorderRadius.circular(10),
          ),
        ],
      ),
    );
  }
}
