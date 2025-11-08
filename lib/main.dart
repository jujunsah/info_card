import 'package:flutter/material.dart';

void main() {
  runApp(const MyInfoCardApp());
}

class MyInfoCardApp extends StatelessWidget {
  const MyInfoCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Info Card - Pro Hacker Edition',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Poppins',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00FF88),
          secondary: Color(0xFF1A1A1A),
        ),
      ),
      home: const InfoCardScreen(),
    );
  }
}

class InfoCardScreen extends StatelessWidget {
  const InfoCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'My Info Card',
          style: TextStyle(
            color: Color(0xFF00FF88),
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 5,
        shadowColor: const Color(0xFF00FF88),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF00FF88).withOpacity(0.3),
                blurRadius: 15,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: const Color(0xFF00FF88),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: const AssetImage('assets/mos.jpg'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Jujun Sahroni',
                style: TextStyle(
                  color: Color(0xFF00FF88),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'IT Helpdesk & Support',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF0F0F0F),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, color: Color(0xFF00FF88)),
                        SizedBox(width: 10),
                        Text('0856-5954-9518'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email, color: Color(0xFF00FF88)),
                        SizedBox(width: 10),
                        Text('jujun.sahroni90@gmail.com'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Color(0xFF00FF88)),
                  SizedBox(width: 8),
                  Text('Bandung, Indonesia'),
                ],
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.link, color: Colors.black),
                label: const Text(
                  'Visit My Portfolio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00FF88),
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
