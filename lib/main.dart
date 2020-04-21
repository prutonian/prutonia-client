import 'package:flutter/material.dart';

import 'list.dart';

void main() => runApp(PrutoniaApp());

class PrutoniaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prutonia',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: PrutoniaMain(),
    );
  }
}

class PrutoniaMain extends StatefulWidget {
  @override
  State createState() => _PrutoniaMain();
}

class _PrutoniaMain extends State<PrutoniaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('☆PRUTONIA☆'),
      ),
      body: MyHomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating action button pressed');
        },
        child: const Icon(Icons.add),
        tooltip: 'create',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _PrutoniaNav(
        fabLocation: FloatingActionButtonLocation.centerDocked,
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}

class _PrutoniaNav extends StatelessWidget {
  const _PrutoniaNav({
    this.fabLocation,
    this.shape,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.pinkAccent,
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: [
            IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(Icons.menu),
              onPressed: () {
                print('Menu button pressed');
              },
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'button',
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button pressed');
              },
            ),
            IconButton(
              tooltip: 'favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}


