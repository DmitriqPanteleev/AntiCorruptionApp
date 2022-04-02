import 'dart:async';

import 'package:flutter/material.dart';

import 'color.dart';
import 'credits_page.dart';
import 'end.dart';
import 'end_page.dart';
import 'first_module_page.dart';
import 'introduction_page.dart';
import 'second_module_page.dart';
import 'test_1_page.dart';
import 'test_2_page.dart';
import 'test_3_page.dart';
import 'third_module_page.dart';
import 'title_page.dart';

StreamController<int> mainController = StreamController<int>.broadcast();

bool firstTestPass = false;
bool secondTestPass = false;
bool thirdTestPass = false;
bool isVisiblePrev = false;

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Антикоррупционер курс',
        home: MyHomePage(title: ''),
      );
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final PageController pageController;

  bool isVisible = true;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    mainController.stream.listen((value) async {});
    isVisible = false;

    Future.delayed(const Duration(seconds: 5), () {
      setState(() => isVisible = true);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget>[
            TitlePage(),
            IntroductionPage(),
            FirstModulePage(),
            SecondModulePage(),
            ThirdModulePage(),
            EndPage(),
            CreditsPage(),
            RealEndPage(),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Visibility(
              visible: (isVisiblePrev && !(pageController.page == 0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(R.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                    );
                    Future.delayed(const Duration(milliseconds: 400), () {
                      setState(() {});
                    });
                  },
                  label: const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                    child: Text(
                      'Назад',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            Visibility(
              visible: (isVisible && !(pageController.page! == 7)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(R.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (pageController.page == 2 && (!firstTestPass)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Test1Page(),
                        ),
                      );
                      return;
                    }

                    if (pageController.page == 3 && (!secondTestPass)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Test2Page(),
                        ),
                      );
                      return;
                    }

                    if (pageController.page == 4 && (!thirdTestPass)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Test3Page(),
                        ),
                      );
                      return;
                    }

                    if (pageController.page == 6) {
                      setState(() => isVisiblePrev = true);
                    }

                    pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                    );

                    Future.delayed(const Duration(milliseconds: 400), () {
                      setState(() {});
                    });

                    if (!isVisiblePrev) {
                      setState(() {
                        isVisible = false;
                        disableButton();
                      });
                    }
                  },
                  label: const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                    child: Text(
                      'Далее',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      );

  void disableButton() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() => isVisible = true);
  }
}
