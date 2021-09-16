import 'package:blocstateapp/BLoc/counter_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(Homepage());

// ----Counter meter with bloc-----//

/* class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Statemgnt'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Mainbody(),
      ),
    );
  }
}

class Mainbody extends StatefulWidget {
  const Mainbody({Key? key}) : super(key: key);

  @override
  _MainbodyState createState() => _MainbodyState();
}

class _MainbodyState extends State<Mainbody> {
  // ignore: non_constant_identifier_names
  final CounterBloc = counterBloc();
  @override
  void dispose() {
    CounterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "BLoC Pattern",
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter : ",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              StreamBuilder(
                initialData: 0,
                builder: (context, snapshot) => Text(
                  '${snapshot.data}',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 50,
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                "+",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              onPressed: () {
                CounterBloc.eventsink.add(counterAction.Increment);
              }),
        ],
      ),
    );
  }
} */

//-----Restful API integration ------//

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Restful API Integration'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Mainbody(),
      ),
    );
  }
}

class Mainbody extends StatefulWidget {
  const Mainbody({Key? key}) : super(key: key);

  @override
  _MainbodyState createState() => _MainbodyState();
}

class _MainbodyState extends State<Mainbody> {
  @override
  Widget build(BuildContext context) {
    return Container(child: ListView.builder(itemBuilder: (context, index) {
      return Container(
        height: 100,
        color: Colors.deepOrangeAccent,
      );
    }));
  }
}
