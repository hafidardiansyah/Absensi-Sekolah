import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                maxChildSize: 0.9,
                // minChildSize: 0.1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    color: Colors.blue[100],
                    child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text('Item'),
                          );
                        }),
                  );
                })));
  }
}
