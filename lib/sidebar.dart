import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        width: 150,
        color: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage('assets/qrcode.jpg'),
                ),
              ),
              Text(
                '© Шорохов В. Е., 2021',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      );
}
