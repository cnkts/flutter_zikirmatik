import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  int counter = 0;

  void increment() {
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Stack(children: [
                  Image.asset(
                    'assets/img/zikirmatik.png',
                    width: 350,
                  ),
                  Positioned(
                      // NUMBERS
                      top: 60,
                      right: 85,
                      child: cText()),
                  Positioned(
                      // COUNT BUTTON
                      bottom: 45,
                      right: 130,
                      child: incrementButton()),
                  Positioned(
                    // RESSET BUTTON
                    bottom: 135,
                    right: 90,
                    child: GestureDetector(
                        onTap: () => reset(), child: resetButton()),
                  )
                ])
              ])),
        ));
  }

  Text cText() {
    return Text('$counter',
        style: const TextStyle(fontFamily: 'digital-7', fontSize: 60));
  }

  Container resetButton() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(50)),
    );
  }

  GestureDetector incrementButton() {
    return GestureDetector(
      //tıklama özelliği veriyor
      onTap: () => increment(),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
