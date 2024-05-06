import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var _initialValue = 0;
void  _incrementValue() {


    setState(() {
      _initialValue++;
    });
  }
  void  _decrement() {

if (_initialValue>0){
  setState(() {
    _initialValue--;
  });
}

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Result'),
            Text(
              _initialValue.toString(),
              style: const TextStyle(fontSize: 40, color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                ElevatedButton(
                    onPressed: _incrementValue,
                    child: const Text('Increment')),
                ElevatedButton(
                    onPressed: _decrement,
                    child: const Text('Decrement'))
              ],
            ),
          ],

        ),

      ),
    );
  }
}
