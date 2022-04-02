import 'package:flutter/material.dart';

class RealEndPage extends StatefulWidget {
  const RealEndPage({Key? key}) : super(key: key);

  @override
  State<RealEndPage> createState() => _RealEndPageState();
}

class _RealEndPageState extends State<RealEndPage> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Поздравляем!".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  Stack(
                    children: <Widget>[
                      IntrinsicHeight(
                        child: Row(children: const <Widget>[
                          VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Text(
                              'ВЫ ИЗУЧИЛИ КОНЦЕПЦИЮ СОВРЕМЕННЫХ МОДЕЛЕЙ ГОСУДАРСТВЕННОЙ АНТИКОРРУПЦИОННОЙ ПОЛИТИКИ И ПРАВИЛЬНО ОТВЕТИЛИ НА ВСЕ ВОПРОСЫ САМОКОНТРОЛЯ!',
                              // maxLines: 6,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 72),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        // padding: EdgeInsets.only(top: 450, left: 80 + MediaQuery.of(context).size.width*0.4),
                        padding: EdgeInsets.only(top: 1100 - MediaQuery.of(context).size.width*0.4, left: 00 + MediaQuery.of(context).size.width*0.4),
                        child: Center(
                          child: AnimatedOpacity(
                            duration: const Duration(seconds: 4),
                            opacity: opacity - 0.2,
                            child: Transform(
                              transform: Matrix4.identity()
                              ..rotateZ(-15 * 3.1415927 / 180),
                              child: SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 1,
                                child: const Image(
                                  image: AssetImage("assets/stamp.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 90),
                ],
              ),
            ),
          ),
        ),
      );
}
