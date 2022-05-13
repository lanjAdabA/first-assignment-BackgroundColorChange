import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(title: 'Color_of_the _rainbow'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _colorname = [
    "VIOLET",
    "INDIGO",
    "BLUE",
    "GREEN",
    "YELLOW",
    "ORANGE",
    "RED",
  ];

  final List<Color> _colors = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];
  var _index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      backgroundColor: _colors[_index % _colors.length],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_colorname[_index % _colorname.length]),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index++;
                  });
                },
                child: const Text("click here to change color"))
          ],
        ),
      ),
    );
  }
}
