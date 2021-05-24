import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  @override
  _ChangeOptionsState createState() => _ChangeOptionsState();
}

class _ChangeOptionsState extends State<Options> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      if (e == null) {
        return;
      }
      _flag = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(
              child: new Icon(
                Icons.thumb_up,
                color: _flag ? Colors.orange[700] : Colors.grey[500],
                size: 100.0,
              ),
            ),
            new Checkbox(
              activeColor: Colors.blue,
              value: _flag,
              onChanged: _handleCheckbox,
            ),
          ],
        ));
  }
}
