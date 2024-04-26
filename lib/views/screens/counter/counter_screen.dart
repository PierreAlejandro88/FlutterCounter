import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
        body:    Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$counter',
              style: const TextStyle(fontSize: 160,fontWeight: FontWeight.w200)),
               Text('Click${counter == 1 ? '' : 's'}',style: const TextStyle(fontSize: 50),)
            ],
          )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });
      },
      child: const Icon(Icons.plus_one)
      ),
      backgroundColor: Colors.amber,
      );
  }
}