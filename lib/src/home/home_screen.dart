import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  //final String data;

  const HomeScreen({
    super.key,
    required this.title,
    // required this.data
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              semanticLabel: 'Text to announce in accessibility modes',
              color: Colors.greenAccent,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              label: "Food"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard_sharp,
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              label: "More"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_off,
                size: 20,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              label: "Profile")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
