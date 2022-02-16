import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pushable_button/pushable_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PushableButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('PUSH ME',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(width: 15),
                  FaIcon(FontAwesomeIcons.smileWink, size: 40),
                ],
              ),
              hslColor: const HSLColor.fromAHSL(1.0, 360, 1.0, 0.37),
              height: 60,
              elevation: 8,
              shadow: BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
              onPressed: _decrementCounter,
            ),
            const SizedBox(height: 20),
            PushableButton(
              child: const Text('ENROLL NOW',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              hslColor: const HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
              height: 60,
              elevation: 8,
              shadow: BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
              onPressed: _incrementCounter,
            ),
            const SizedBox(height: 20),
            PushableButton(
              child: const Text('ADD TO BASKET',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              hslColor: const HSLColor.fromAHSL(1.0, 200, 1.0, 0.37),
              height: 60,
              elevation: 8,
              shadow: BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
              onPressed: _incrementCounter,
            ),
            const SizedBox(height: 20),
            Text(
              'Pushed: $_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
