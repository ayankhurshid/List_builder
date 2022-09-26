import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListBuilderScreen extends StatelessWidget {
  ListBuilderScreen({Key? key}) : super(key: key);

  final _mylist = [
    'no 1',
    'no 2',
    'no 3',
    'no 4',
    'no 5',
    'no 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: ListView(
        children: [
          // Row(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 150,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 150,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 150,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) => Container(
              height: 400,
              width: 250,
              alignment: Alignment.center,
              color: index == 2
                  ? Colors.blue
                  : index == 0
                      ? Colors.amberAccent
                      : index == 1
                          ? Colors.purple
                          : index == 3
                              ? Colors.red
                              : index == 4
                                  ? Colors.green
                                  : Colors.amber,
              child: Text(_mylist[index]),
            ),
          ),
        ],
      ),
    );
  }
}
