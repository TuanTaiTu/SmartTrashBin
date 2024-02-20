import 'package:flutter/material.dart';
import 'package:smarthome/pages/CameraPage.dart';
import 'package:smarthome/pages/Smart_Trash_Bin.dart';
import 'package:smarthome/pages/TempC_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Smart Home App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List pages = [
    TempPage(),
    SmartTrashBinPage(),
    CameraPage(),
  ];

  int currentIndex = 0;

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // Bottom Navbar
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: Color(0xFF343434),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud_queue_outlined),
                  label: "Humidity and Temperature"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.recycling), label: "Smart Trash Bin"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined), label: "Camera"),
            ],
            currentIndex: currentIndex,
            selectedItemColor: Color(0xFF42C83C),
            unselectedItemColor: Colors.grey[400],
            onTap: onTapNavigatorBar),
      ),
    );
  }
}
