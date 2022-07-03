import 'package:states_rebuilder/states_rebuilder.dart';

class StatesContainer {
  List<String> arr = [];

  addToArray(String stringName) {
    arr.add(stringName);
    statesContainer.notify();
  }
}

// Make it global to access it from any classes
final statesContainer = RM.inject(() => StatesContainer());
