import "package:flutter/material.dart";

class CounterFunctions extends StatefulWidget {
  const CounterFunctions({super.key});

  @override
  State<CounterFunctions> createState() => _CounterFunctionsState();
}

class _CounterFunctionsState extends State<CounterFunctions> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen',style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded), 
          onPressed: () { 
            setState(() {
              counter = 0;
            });
         }),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
              icon: Icons.refresh_outlined,
              shapeBorder: const CircleBorder(),
              onPressed: () {
                setState(() {
                   counter = 0;
                });
              },
          ),
          const SizedBox(height: 15,),
          CustomFloatingButton(
              icon: Icons.plus_one_outlined,
              shapeBorder: const CircleBorder(),
              onPressed: () {
                setState(() {
                  counter++;                  
                });
              }
          ),
          const SizedBox(height: 15),
          CustomFloatingButton( 
              icon: Icons.exposure_minus_1_outlined,
              shapeBorder: const CircleBorder(),
              onPressed: () {
                setState(() {
                  if(counter <= 0) return;
                  counter--;                  
                });
              },
            )
        ],
      ),
      backgroundColor: Colors.amber,
      );
  }
}

class CustomFloatingButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed; 
  final ShapeBorder? shapeBorder;

  const CustomFloatingButton({
    super.key,
    required this.icon, 
    this.onPressed,
    this.shapeBorder,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          onPressed: onPressed,
          shape: shapeBorder,
          child: Icon(icon),
    );
  }
}