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
            // Humidity
            Container(
              height: 300,
              width: 370,
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
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage('images/humidity.png')))
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.green),
            ),
            SizedBox(
              height: 30,
            ),
            // Temperature
            Container(
              height: 300,
              width: 400,
              child: Column(
                children: [
                  Text(
                    "Temperature: 27°C",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage('images/temperature.png')))
                ],
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
