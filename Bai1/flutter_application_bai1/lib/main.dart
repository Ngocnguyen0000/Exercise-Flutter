import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50], 
      appBar: AppBar(
        title: Text('Nguyễn Thị Thu Thảo - 221121514232'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Image.asset(
                  state.isImage1
                      ? 'assets/images/image1.jpg' 
                      : 'assets/images/image2.jpg',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  'Count: ${state.count}',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 27, 242, 185), 
                  ),
                  onPressed: () {
                   
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}