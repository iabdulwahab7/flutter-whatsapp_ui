import 'package:fisrt_app/second_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("WhatsApp"),
            backgroundColor: Colors.teal,
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  child: const Icon(Icons.more_vert_rounded),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: 1,
                          child: Text("New Group"),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text("New Broadcast"),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text("Linked Devices"),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: Text("Starred Messages"),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: Text("Settings"),
                        ),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text("Camera"),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/icon.png'),
                      ),
                      title: Text("Abdul Wahab"),
                      subtitle: Text("Hello, How are you"),
                      trailing: Text("Today"),
                    );
                  }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 4),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(index /2 != 0 ? 'assets/icon.png' : 'assets/logo.png'),
                      ),
                    ),
                    title: const Text("Abdul Wahab"),
                    subtitle: const Text("Just Now"),
                  );
                }),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xffE6E6E6),
                        radius: 25,
                        child: Icon(Icons.person,color: Colors.teal,),
                      ),
                      title: const Text("Abdul Wahab"),
                      subtitle: Text(index /2 != 1 ? 'You missed audio call' : 'You missed video call'),
                      trailing: Icon(index /2 != 1 ?
                        Icons.call : Icons.video_call,
                        color: Colors.teal,
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
