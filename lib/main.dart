import 'package:flutter/material.dart';
import 'package:timeline_widget/components/my_timeline_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: ListView(
          children: const [
            // Start timeline
            MyTimelineTile(isFirst: true, isLast: false, isPast: true, eventCard: Text('ORDER PLACED', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

            // Middle timeline
            MyTimelineTile(isFirst: false, isLast: false, isPast: true, eventCard: Text('ORDER SHIPPED', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

            // End timeline
            MyTimelineTile(isFirst: false, isLast: true, isPast: false, eventCard: Text('ORDER DELIVERED', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),

          ],
        ),
      ),
    );
  }
}
