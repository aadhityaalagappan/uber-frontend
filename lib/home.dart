import 'package:flutter/material.dart';

import 'Book.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? startValue;
  String? destination;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Travel Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: startValue,
              hint: Text("Select Start Location"),
              onChanged: (String? newLocation) {
                setState(() {
                  startValue = newLocation;
                });
              },
              items: <String>['Boston', 'New York', 'San Jose', 'Florida']
                  .map<DropdownMenuItem<String>>((String toElement) {
                return DropdownMenuItem<String>(
                  value: toElement,
                  child: Text(toElement),
                );
              }).toList(),
            ),
            SizedBox(height: 30),
            DropdownButton<String>(
                value: destination,
                hint: Text("Enter the Destination"),
                onChanged: (String? newDestination) {
                  setState(() {
                    destination = newDestination;
                  });
                },
                items: <String>['Austin', 'Los Angeles', 'Washington', 'Tempe']
                    .map<DropdownMenuItem<String>>((String toElement) {
                  return DropdownMenuItem<String>(
                    value: toElement,
                    child: Text(toElement),
                  );
                }).toList()
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  if(startValue!=null && destination!=null) {
                    Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => Book(
                          start: startValue!,
                          end: destination!,
                        ),
                        ),
                    );
                  }
                }, 
                child: Text("Book"))
          ],
        ),
      ),
    );
  }
}
