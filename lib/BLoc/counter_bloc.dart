import 'dart:async';

enum counterAction {
  Increment,
  Decrement,
}

// ignore: camel_case_types
class counterBloc {
  final _statestreamController = StreamController<int>();
  StreamSink<int> get countersink => _statestreamController.sink;
  Stream<int> get counterstream => _statestreamController.stream;

  final _eventstreamcontroller = StreamController<counterAction>();
  StreamSink<counterAction> get eventsink => _eventstreamcontroller.sink;
  Stream<counterAction> get eventstream => _eventstreamcontroller.stream;

  counterBloc() {
    int counter = 0;
    eventstream.listen((event) {
      if (event == counterAction.Increment) {
        counter++;
      } else {
        counter--;
      }
      countersink.add(counter);
    });
  }
  void dispose(){
    _statestreamController.close();
    _eventstreamcontroller.close();
  }
}
