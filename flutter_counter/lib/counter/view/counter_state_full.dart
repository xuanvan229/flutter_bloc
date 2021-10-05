import 'package:flutter/material.dart';

class CounterStateLocal extends StatefulWidget {
  const CounterStateLocal({Key? key}) : super(key: key);

  @override
  _CounterStateLocalState createState() => _CounterStateLocalState();
}

class _CounterStateLocalState extends State<CounterStateLocal> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    print("it's will rebuild if the state change");
    return Container(
      child: Column(
        children: [
          Text('Counter: $_counter'),
          RaisedButton(
            child: Text('Increment'),
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}
