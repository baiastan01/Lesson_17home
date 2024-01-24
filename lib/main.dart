import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "What’s your strength \nlevel?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCont(
                  text: "Very Low",
                ),
                SizedBox(width: 6),
                MyCont(
                  text: "Low",
                ),
                SizedBox(width: 6),
                MyCont(
                  isSelected: true,
                  text: "Medium",
                ),
                SizedBox(width: 6),
                MyCont(
                  text: "High",
                ),
                SizedBox(width: 6),
                MyCont(
                  text: "Very High",
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              "This means you can do 16+ push ups, 3+ \n pull ups, 3+  single leg squats, and a 1+\n minute plank.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff898A8D),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              "...and you have",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    NewWidget(
                      text1: "Beginer",
                      text2: "0-6",
                      isSelected: true,
                    ),
                    SizedBox(width: 10),
                    NewWidget(
                      text1: "Intermediate",
                      text2: "6-18",
                    ),
                    SizedBox(width: 10),
                    NewWidget(
                      text1: "Advanced",
                      text2: "18+",
                    ),
                  ],
                ),
              ],
            ),
            
            SizedBox(
              height: 15,
            ),
            Text(
              "strength training experience in the last 5 years.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff898A8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.isSelected = false,
  });
  final String text1;
  final String text2;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text(
            text1,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'months',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      height: 108,
      width: 98,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 3,
          color: isSelected ? const Color(0xff5ee0B1) : const Color(0xffffffff),
        ),
        color: const Color(0xffffffff),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0.2,
            blurRadius: 3,
            color: Color(0xff898A8D),
          ),
        ],
      ),
    );
  }
}

class MyCont extends StatelessWidget {
  const MyCont({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: Text(
        text,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isSelected ? const Color(0xff5ee0B1) : const Color(0xffffffff),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 127, 123, 123),
            blurRadius: 5,
            spreadRadius: 0.5,
          ),
        ],
      ),
    );
  }
}
