import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  String _text = '';
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('追加'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
                onChanged: (String value) {
                // データが変更したことを知らせる（画面を更新する）
                setState(() {
                  // データを変更
                  _text = value;
                });
              },
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(_text);
                },
                child: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
