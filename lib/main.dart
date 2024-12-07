import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double balance=500;
  void addFunction(){
    setState(() {
      balance=balance+500;
    });
    print(balance);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Billonare App'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child:   Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Total Balance '),
                        const SizedBox(height: 20),
                        Text('$balance'),
                  ],
                 ),
                ),
                Expanded(
                  flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size(double.infinity, 0),
                      ),
                        onPressed: addFunction,
                        child: const Text('Add Money')
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

