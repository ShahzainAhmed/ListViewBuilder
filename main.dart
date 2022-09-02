import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Builder",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  // ignore: prefer_interpolation_to_compose_strings
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                          'https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg'),
                    ),
                    title: Text(
                      "Shahzain Ahmed",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text("Hey, I hope you are doing good!",
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    trailing: Text("3:02 PM"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
