import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AwakeningEducationApp());
}

class AwakeningEducationApp extends StatelessWidget {
  const AwakeningEducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awakening Education',
      theme: ThemeData(
        primaryColor: const Color(0xFF1E3A8A),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> courses = const [
    {"title": "Class 1 to 10 (All Subjects)", "price": "₹499/yr", "tag": "Foundation"},
    {"title": "Class 11th & 12th Mathematics", "price": "₹499/yr", "tag": "Senior"},
    {"title": "All Recorded Classes Pack", "price": "₹249", "tag": "VOD"},
    {"title": "UGC NET Philosophy Full Course", "price": "₹2,999", "tag": "UGC NET"},
    {"title": "Philosophy Optional (UPSC/PSC)", "price": "₹2,499", "tag": "UPSC"},
    {"title": "Ethics, Integrity & Aptitude", "price": "₹999", "tag": "GS-4"},
    {"title": "UGC NET Paper 1 Only", "price": "₹999", "tag": "General"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A8A),
        title: Text(
          "Awakening Education",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.school, color: Colors.white),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xFF1E3A8A), Color(0xFF2563EB)]),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("🔴 LIVE CLASSROOM", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 6),
                Text("Join Today's Live Session", style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text("Class 12th Maths & UGC NET Philosophy", style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text("Our Special Courses", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ...courses.map((course) => Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFEFF6FF),
                child: Text(course['tag']![0], style: const TextStyle(color: Color(0xFF1E3A8A), fontWeight: FontWeight.bold)),
              ),
              title: Text(course['title']!, style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14)),
              subtitle: Text(course['tag']!, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(course['price']!, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E3A8A), fontSize: 14)),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(color: const Color(0xFF1E3A8A), borderRadius: BorderRadius.circular(4)),
                    child: const Text("Enroll", style: TextStyle(color: Colors.white, fontSize: 11)),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
