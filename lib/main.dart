import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter_villains/villains/villains.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Interface Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Container(
        child: Stack(
          children: [
            WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.blue, Colors.blue.shade200],
                  [Colors.blue.shade200, Colors.blue.shade100],
                ],
                durations: [35000, 19440],
                heightPercentages: [0.25, 0.30],
                blur: MaskFilter.blur(BlurStyle.solid, 10),
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              waveAmplitude: 0,
              size: Size(
                double.infinity,
                double.infinity,
              ),
            ),
            Center(
              child: Villain(
                villainAnimation: VillainAnimation.fade(
                  from: Duration(milliseconds: 100),
                  to: Duration(milliseconds: 500),
                ),
                child: ElevatedButton( // Заменим RaisedButton на ElevatedButton
                  onPressed: () {
                    // Действия при нажатии на кнопку
                  },
                  child: Text('Go to Another Screen'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
