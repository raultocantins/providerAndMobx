import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../stores/counter_store.dart';

import 'package:provider_click/src/providers/counter.provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool mobX = false;

  toggleMobx() {
    setState(() {
      mobX = !mobX;
    });
  }

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    final counterMobx = Counter();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobX ? Colors.red : Colors.blue,
        title: Text(widget.title),
        actions: [
          ElevatedButton(
            onPressed: toggleMobx,
            style: const ButtonStyle(backgroundColor: MyColor()),
            child: Row(
              children: [
                mobX
                    ? const Text("Click to change for Provider")
                    : const Text("Click to change for Mobx"),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mobX
                ? const Text('You are using MobX')
                : const Text('You are using Provider'),
            Observer(
              builder: (BuildContext context) {
                return Text(
                    '${mobX ? counterMobx.counter : counterProvider.counter}',
                    style: Theme.of(context).textTheme.headline4);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  backgroundColor: mobX ? Colors.red : Colors.blue,
                  onPressed:
                      mobX ? counterMobx.decrement : counterProvider.decrement,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  backgroundColor: mobX ? Colors.red : Colors.blue,
                  onPressed:
                      mobX ? counterMobx.increment : counterProvider.increment,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyColor extends MaterialStateColor {
  const MyColor() : super(_defaultColor);

  static const int _defaultColor = 0;
  static const int _pressedColor = 0;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}
