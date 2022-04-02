import 'package:flutter/material.dart';

class R {
  static const blue = Color.fromRGBO(0, 33, 55, 1.0);
}

/*
import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:course_desktop_windows/Color.dart';
import 'package:course_desktop_windows/Header.dart';
import 'package:course_desktop_windows/HeaderText.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

class TitlePage extends StatefulWidget {
  TitlePage({Key? key}) : super(key: key);

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  final ScrollController scrollController = ScrollController();

  double oldOffset = 0;

  double opacity = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      setState(() {
        if (oldOffset - scrollController.offset > 0) {
          opacity = (opacity + 0.1) >= 1 ? 1 : opacity + 0.1;
          print('up');
        } else {
          opacity = (opacity - 0.1) <= 0 ? 0 : opacity - 0.1;
          print('down');
        }
        print('$opacity');
        oldOffset = scrollController.offset;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: 150,
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image(image: AssetImage('assets/qrcode.jpg'),),
                      SizedBox(height: 8,),
                      Text('Шорохов В.Е., 2021', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,  color: Colors.white, fontSize: 14),),
                      SizedBox(height: 48,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(160, 10, 10, 10),
                child: ListView(
                    controller: scrollController,
                    scrollDirection: Axis.vertical, children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 100),
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                      color: Colors.red
                      ),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "КОНЦЕПЦИЯ СОВРЕМЕННЫХ МОДЕЛЕЙ ГОСУДАРСТВЕННОЙ АНТИКОРРУПЦИОННОЙ ПОЛИТИКИ",
                              style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ))),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              width: 10,
                              height: 110,
                              child: VerticalDivider(
                                width: 20,
                                thickness: 8,
                                color: Colors.blueAccent,
                              ),
                            ),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text("АВТОР", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),),),
                                RegularText(text: "Шорохов"),
                                RegularText(text: "Вячеслав"),
                                RegularText(text: "Евгеньевич"),
                              ],
                            ),
                          ],
                        ),

                        TextMenu(),
                      ],
                    ),
                  ),
                  Divider(),

                  Divider(),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 0, left: 10),
                        width: 10,
                        height: 360,
                        child: VerticalDivider(
                          width: 20,
                          thickness: 8,
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("АННОТАЦИЯ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),),
                            RegularText(
                                text:
                                "Программа (приложение) разработана на основе авторских научных публикаций, посвященных вопросам антикоррупционной политики различных стран мира. Алгоритм программы включает определенные уровни (этапы) и позволяет обучающимся последовательно в интерактивной форме изучить историю развития антикоррупционной политики отдельных древних цивилизаций и государств, особенности коррупционных проявлений и меры противодействия коррупции в нашей стране, международные подходы к понятию «коррупция» и сложившиеся современные модели государственной антикоррупционной политики. Программа может быть использована при реализации образовательных программ высшего образования и дополнительных профессиональных программ с применением различных форм обучения, с учетом их функционирования в составе электронной информационно-образовательной среды образовательной организации или научной организации, осуществляющей образовательную деятельность."),
                            SizedBox(height: 40,),
                            GestureDetector(
                              onTap: () {
                                print('jere');
                                Future.delayed(Duration(seconds: 0), () async {
                                  await launch("https://shorokhov.info/");
                                });
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('Шорохов В.Е., 2021 https://shorokhov.info/', style: TextStyle(
                                      decoration: TextDecoration.underline, color: Colors.blueAccent, fontSize: 24),),
                                  SizedBox(width: 16,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Icon(Icons.web),
                                  ),
                                ],
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 300,
                  )
                ]),
              ),
            ],
          ),
        ),
        floatingActionButton: AnimatedOpacity(
          opacity: opacity,
          duration: Duration.zero,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(left: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(255, 251, 237, 1).withOpacity(1),
                      boxShadow: [
                        BoxShadow(
                          color: R.blue.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 100,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8.0, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Нет возможности работать в программе?",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(R.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ))),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Файл с образовательным подкастом появился в корне с программой!')));
                            },
                            label: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Слушайте в формате образовательного подкаста ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: Icon(Icons.library_music),
                          ),
                          SizedBox(
                            height: 8,
                          ),

                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(R.blue),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    ))),
                            onPressed: () {

                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Учебная презентация появилась в корне с программой!')));
                            },
                            label: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Используйте в формате учебной презентации',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: Icon(Icons.present_to_all),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(R.blue),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    ))),
                            onPressed: () {

                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Текстовое приложение появилось в корне с программой!')));
                            },
                            label: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Скачивайте в формате текстового приложения  ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: Icon(Icons.text_fields),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(R.blue),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    ))),
                            onPressed: () {

                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Файл в формате электронной книги появился в корне с программой!')));
                            },
                            label: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Читайте в формате электронной книги ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: Icon(Icons.book_rounded),
                          ),
                          SizedBox(
                            height: 8,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


* */