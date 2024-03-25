import 'package:flutter/material.dart';
//import 'dart:io';
import './todoList.dart';

void main() {
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.pink,
      ),
      // リスト一覧画面を表示
      home: TodoListPage(),
    );
  }
}
