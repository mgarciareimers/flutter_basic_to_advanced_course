import 'package:flutter/material.dart';

// Widgets.
import 'package:hello_world_app/src/presentation/widgets/custom_floating_action_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    Key? key
  }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late int numberOfClicks;

  @override
  void initState() {
    numberOfClicks = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numberOfClicks.toString(),
              style: const TextStyle(
                fontSize: 140,
                fontWeight: FontWeight.w100
              ),
            ),
            Text(
              numberOfClicks == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(
                fontSize: 25,
              ),
            )
          ],
        )
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: _addOneButtonClicked,
        iconData: Icons.plus_one,
      ),
    );
  }

  // Method that is called when the user clicks the add 1 button.
  void _addOneButtonClicked() {
    numberOfClicks++;
    setState(() {});
  }
}
