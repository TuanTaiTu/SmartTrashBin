import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TempPage(),
    title: "Humidity and Temperature Page",
  ));
}

class TempPage extends StatefulWidget {
  const TempPage({super.key});

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          // backgroundColor: Colors.green,
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 400,
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text(
                    "Humidity: 70%",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image(image: AssetImage('images/temperature.png'))
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.green),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              width: 400,
              child: Text(
                "Temperature: 27°C",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.green),
            ),
          ],
        ),
      )),
    );
  }
}
