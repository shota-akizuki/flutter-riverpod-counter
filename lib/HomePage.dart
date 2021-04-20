import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Counter.dart';

//グローバル定数としてトップレベルにProviderを宣言する
final _counterProvider = ChangeNotifierProvider(
  (ref) => Counter(),
);

class MyHomePage extends StatelessWidget {
  MyHomePage({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            //Consumerを使ってProviderをリッスン
            Consumer(builder: (context, watch, child) {
              return Text('${watch(_counterProvider).count}');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //context.readを使用して値を呼び出す
          context.read(_counterProvider).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
