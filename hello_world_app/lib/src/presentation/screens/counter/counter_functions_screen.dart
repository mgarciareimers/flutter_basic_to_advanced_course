import 'package:flutter/material.dart';

// Widgets.
import 'package:hello_world_app/src/presentation/widgets/custom_floating_action_button.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({
    Key? key
  }) : super(key: key);

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
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
          'Counter Functions',
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _onRefreshIconButtonClicked,
            icon: const Icon(
              Icons.refresh_rounded
            ),
          ),
        ]
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
            onPressed: _onRefreshIconButtonClicked,
            iconData: Icons.refresh_rounded,
          ),
          const SizedBox(height: 16),

          CustomFloatingActionButton(
            onPressed: _addOneButtonClicked,
            iconData: Icons.plus_one,
          ),
          const SizedBox(height: 16),

          CustomFloatingActionButton(
            onPressed: _onSubtractOneButtonClicked,
            iconData: Icons.exposure_minus_1,
          )
        ],
      ),
    );
  }

  // Method that is called when the user clicks the add 1 button.
  void _addOneButtonClicked() {
    numberOfClicks++;
    setState(() {});
  }

  // Method that is called when the user clicks the subtract 1 button.
  void _onSubtractOneButtonClicked() {
    if (numberOfClicks > 0) {
      numberOfClicks--;
      setState(() {});
    }
  }

  // Method that is called when the user clicks the refresh button.
  void _onRefreshIconButtonClicked() {
    numberOfClicks = 0;
    setState(() {});
  }
}
