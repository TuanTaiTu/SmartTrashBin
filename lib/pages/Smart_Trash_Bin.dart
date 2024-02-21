import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SmartTrashBinPage(),
    title: "Smart Trash Page",
  ));
}

class SmartTrashBinPage extends StatefulWidget {
  const SmartTrashBinPage({super.key});

  @override
  State<SmartTrashBinPage> createState() => _SmartTrashBinPageState();
}

class _SmartTrashBinPageState extends State<SmartTrashBinPage> {
  final Organic = <String, double>{
    "Organic": 72.69,
  };

  final Inorganic = <String, double>{
    "Plastic": 43.0,
    "Glass": 37.0,
    "Paper": 20.0
  };

  final colorList = <Color>[
    Colors.greenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          // backgroundColor: Colors.green,
          body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 40),
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
                    "Organic Waste",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    width: 220,
                    child: PieChart(
                      dataMap: Organic,
                      chartType: ChartType.ring,
                      baseChartColor: Colors.grey[300]!,
                      colorList: colorList,
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: false,
                      ),
                      legendOptions: LegendOptions(showLegends: false),
                      totalValue: 100,
                    ),
                  ),
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
              child: Column(
                children: [
                  Text(
                    "Inorganic Waste",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    width: 220,
                    child: PieChart(
                      dataMap: Inorganic,
                      chartType: ChartType.ring,
                      baseChartColor: Colors.grey[300]!,
                      colorList: colorList,
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: false,
                      ),
                      legendOptions: LegendOptions(showLegends: true),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.yellow),
            ),
          ],
        ),
      )),
    );
  }
}
