import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/provider.dart';
import 'package:provider_practice/screens/second_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print("built");
    return Consumer<HomeProvider>(builder: ((context, newVal, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            newVal.add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Provider"),
        ),
        body: Column(
          children: [
            Text(newVal.numbers.last.toString()),
            Expanded(
              child: ListView.builder(
                  itemCount: newVal.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(newVal.numbers[index].toString());
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Second();
                  }));
                },
                child: Text('Second Page'))
          ],
        ),
      );
    }));
  }
}
