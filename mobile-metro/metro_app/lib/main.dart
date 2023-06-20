import 'package:flutter/material.dart';
import 'package:metro_app/widgets/map.dart';

void main() {
  runApp(MyApp());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const SizedBox();
        } else {
          return MyApp();
        }
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Application test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MapWidget(),
        routes: {
          '/map': (context) => MapWidget(),
        });
  }
}
