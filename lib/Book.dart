
import 'package:flutter/material.dart';

class Book extends StatelessWidget {

  final String start;
  final String end;

  Book({required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Taxi")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Start Location: $start'),
            SizedBox(height: 15),
            Text('Destination : $end'),
          ],
        ),
      ),

    );
  }
}
