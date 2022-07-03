import 'package:flutter/material.dart';
import 'package:state_rebuilder/states.dart';
import 'package:states_rebuilder/scr/state_management/legacy/state_builder.dart';

void main() {
  runApp(const StartingPoint());
}

int count = 0;

class StartingPoint extends StatelessWidget {
  const StartingPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateBuilder(
      observe: () => statesContainer,
      builder: (context, _) => MaterialApp(
        home: Center(
          child: Column(
            children: [
              Text(statesContainer.state.arr.join(" ")),
              ElevatedButton(
                  onPressed: () {
                    count++;
                    statesContainer.state.addToArray(count.toString());
                  },
                  child: const Text("Join"))
            ],
          ),
        ),
      ),
    );
  }
}
