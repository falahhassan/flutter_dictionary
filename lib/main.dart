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
        body: Padding(
          padding: const EdgeInsets.all(57.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dictionary',
              ),
              const TextField(),
              Row(
                children: [
                  PhysicalModel(
                      color: const Color.fromARGB(0, 36, 27, 27),
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(100.0),
                      elevation: 0.0,
                      shape: BoxShape.circle,
                      child: Icon(Icons.volume_up))
                ],
              ),
              const Row(
                children: [
                  Text("Meaning"),
                  Text("djslfjlsjfljsdlfjslfjlkdsjfkldsjklfsk")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
