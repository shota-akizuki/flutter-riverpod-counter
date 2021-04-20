import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'HomePage.dart';

//WidgetツリーでProviderが使用できるようにするため、ルートにProviderScopeを追加
void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Riverpod Counter'),
    );
  }
}
