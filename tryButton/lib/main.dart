import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
            onPressed: (){},
          child: const Text('TextButton'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed:(){},
            child: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {
            debugPrint('Received click');
          },
          child: const Text('OutlinedButton'),
          ),
        ],
      ),
    );
  }
}