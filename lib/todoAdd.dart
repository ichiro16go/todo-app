import 'package:flutter/material.dart';
//import 'dart:io';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('add list'),
        ),
        body: Container(
          padding: const EdgeInsets.all(64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _text,
                style: const TextStyle(color: Colors.blue),
              ),
              TextField(
                onChanged: (String value) {
                  setState(() {
                    _text = value;
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(_text);
                  },
                  child: const Text(
                    'add list',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  child: Text('cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
