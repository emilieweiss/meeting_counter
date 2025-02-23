import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterButton extends StatefulWidget {
  final String name;

  const CounterButton({Key? key, required this.name}) : super(key: key);

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _loadCount(); // Indlæs gemt værdi
  }

  // Indlæs tællerens værdi fra SharedPreferences
  Future<void> _loadCount() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = prefs.getInt(widget.name) ?? 0;
    });
  }

  // Opdater tælleren og gem den
  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _count++;
    });
    await prefs.setInt(widget.name, _count); // Gem værdien
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _incrementCounter,
      child: Text("${widget.name}: $_count"),
    );
  }
}
