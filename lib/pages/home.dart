import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/providers/compter_provider.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _compteurProvider = Provider.of<CompteurProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        children: [Text('${_compteurProvider.counter}')],
      ),
      floatingActionButton: ElevatedButton(
        child: Text("+"),
        onPressed: () {
          _compteurProvider.increment();
        },
      ),
    );
  }
}
