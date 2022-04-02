import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'color.dart';
import 'header.dart';
import 'header_text.dart';
import 'sidebar.dart';



class TitlePage extends StatefulWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  late final ScrollController scrollController;

  double oldOffset = 0;
  double opacity = 1;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (mounted) {
        setState(() {
          if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent) {
            opacity = 0;
          } else {
            opacity = 1;
          }
          oldOffset = scrollController.offset;
        });
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              const Sidebar(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 160,
                  right: 26,
                  top: 8,
                  bottom: 8,
                ),
                child: ListView(
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 100),
                      alignment: Alignment.centerRight,
                      decoration: const BoxDecoration(color: Colors.red),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "КОНЦЕПЦИЯ СОВРЕМЕННЫХ МОДЕЛЕЙ ГОСУДАРСТВЕННОЙ АНТИКОРРУПЦИОННОЙ ПОЛИТИКИ",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 25),
                                width: 10,
                                height: 110,
                                child: const VerticalDivider(
                                  width: 20,
                                  thickness: 8,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "АВТОР",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  RegularText(text: "Шорохов"),
                                  RegularText(text: "Вячеслав"),
                                  RegularText(text: "Евгеньевич"),
                                ],
                              ),
                            ],
                          ),
                          const TextMenu(),
                        ],
                      ),
                    ),
                    const Divider(),
                    const Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 10),
                          width: 10,
                          height: 360,
                          child: const VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "АННОТАЦИЯ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 22,
                                ),
                              ),
                              const RegularText(
                                text:
                                    "Программа (приложение) разработана на основе авторских научных публикаций, посвященных вопросам антикоррупционной политики различных стран мира. Алгоритм программы включает определенные уровни (этапы) и позволяет обучающимся последовательно в интерактивной форме изучить историю развития антикоррупционной политики отдельных древних цивилизаций и государств, особенности коррупционных проявлений и меры противодействия коррупции в нашей стране, международные подходы к понятию «коррупция» и сложившиеся современные модели государственной антикоррупционной политики. Программа может быть использована при реализации образовательных программ высшего образования и дополнительных профессиональных программ с применением различных форм обучения с учетом их функционирования в составе электронной информационно-образовательной среды образовательной организации или научной организации, осуществляющей образовательную деятельность.",
                              ),
                              const SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          Future.delayed(
                                            const Duration(seconds: 0),
                                            () async {
                                              await launch(
                                                  "https://www.msu.ru/science/news/v-krasnoyarskom-krae-sozdana-setevaya-sektsiya-fgp-mgu.html");
                                            },
                                          );
                                        },
                                        child: const Text(
                                          'Концепция разработана в рамках совместного проекта МГУ имени М.В.Ломоносова и ИГМУ при Правительстве Красноярского края.',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 300)
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: AnimatedPadding(
          padding: EdgeInsets.only(top: 1000 * opacity),
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FittedBox(
                  child: Container(
                    margin: const EdgeInsets.only(left: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: R.blue.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 100,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8.0, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            "Нет возможности работать в программе?",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(R.blue),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Файл «Образовательный подкаст» доступен в папке «Приложения» к программе'),
                                ),
                              );
                            },
                            label: const Padding(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Слушайте в формате образовательного подкаста ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: const Icon(Icons.library_music),
                          ),
                          const SizedBox(height: 8),
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
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Файл «Учебная презентация» доступен в папке «Приложения» к программе'),
                                ),
                              );
                            },
                            label: const Padding(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Используйте в формате учебной презентации',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: const Icon(Icons.present_to_all),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(R.blue),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Файл «Текстовое приложение» доступен в папке «Приложения» к программе'),
                                ),
                              );
                            },
                            label: const Padding(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Скачивайте в формате текстового приложения  ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: const Icon(Icons.text_fields),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(R.blue),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Файл «Электронная книга» доступен в папке «Приложения» к программе'),
                                ),
                              );
                            },
                            label: const Padding(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: Text(
                                'Читайте в формате электронной книги ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            icon: const Icon(Icons.book_rounded),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
