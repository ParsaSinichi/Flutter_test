import 'package:flutter/material.dart';

void main() {
  runApp( Calculator());
}

class Calculator extends StatefulWidget {
   Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String butn_name="This is button1";
    String butn2_name="This is button2";

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('app title')),
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                 setState(() {
                    butn_name="i got changed and i went to the home icon";
                      currentIndex=0;
                 });
                },
                child:  Text(butn_name),
              ),
              ElevatedButton(
                onPressed: () {
                 setState(() {
                    butn2_name="i got changed and i went to the setting icon";
                    currentIndex=1;
                 });
                },
                child:  Text(butn2_name),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:const [//creating different items for navbar
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "test", icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,//choosing the defualt selected option for the bottom navbar
          onTap: (int index){//if we click on the other icon, it will changes to clicked icon
            setState(() {
              currentIndex=index;
            });

          },
        ),
      ),
    );
  }
}
