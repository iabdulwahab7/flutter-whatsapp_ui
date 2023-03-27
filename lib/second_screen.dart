import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  static String id = 'second_screen';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          backgroundColor: Colors.grey,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text("Back to Home Screen")),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Person"),
                        subtitle: Text("Message"),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
