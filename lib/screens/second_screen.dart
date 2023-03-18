import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/provider.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");

    return Consumer<HomeProvider>(builder: ((context, newVal, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            newVal.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("provider"),
        ),
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newVal.numbers.length,
            itemBuilder: (context, index) {
              return Text(
                newVal.numbers[index].toString(),
                style: TextStyle(fontSize: 33),
              );
            }),
      );
    }));
  }
}
