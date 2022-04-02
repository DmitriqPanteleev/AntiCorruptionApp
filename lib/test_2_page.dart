import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'header_text.dart';
import 'main.dart';

StreamController<int> test2Controller = StreamController<int>.broadcast();

class Test2Page extends StatefulWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  _Test2PageState createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  int question = 0;

  @override
  void initState() {
    super.initState();
    test2Controller.stream.listen((event) {
      if (mounted) {
        setState(() => question = event);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: <Widget>[
              const Center(
                child: Header(
                  text: 'Вопросы для самоконтроля по разделу',
                ),
              ),
              const SizedBox(height: 16),
              StepProgressIndicator(
                totalSteps: 4,
                currentStep: question,
                size: 36,
                selectedColor: Colors.blue,
                unselectedColor: Colors.red,
                customStep: (index, color, _) => color == Colors.blue
                    ? Container(color: color)
                    : Container(color: color),
              ),
              const SizedBox(height: 32),
              SecondPicker(question: question),
            ],
          ),
        ),
      );
}

class SecondPicker extends StatefulWidget {
  final int question;

  const SecondPicker({Key? key, required this.question}) : super(key: key);

  @override
  _SecondPickerState createState() => _SecondPickerState();
}

class _SecondPickerState extends State<SecondPicker> {
  @override
  Widget build(BuildContext context) {
    switch (widget.question) {
      case 0:
        return const Test2Question1();
      case 1:
        return const Test2Question2();
      case 2:
        return const Test2Question3();
      case 3:
        return const Test2Question4();
    }
    throw Exception();
  }
}

class Test2Question1 extends StatefulWidget {
  const Test2Question1({Key? key}) : super(key: key);

  @override
  _Test2Question1State createState() => _Test2Question1State();
}

class _Test2Question1State extends State<Test2Question1> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const RegularText(
              text:
                  'Верно ли утверждение: «Первое законодательное ограничение коррупционных действий на Руси принадлежит Петру I»?',
            ),
            const SizedBox(height: 40, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                showFail(
                  context,
                  'Неверно!',
                  'Cтоит изучить раздел «Особенности государственной антикоррупционной политики в России» еще раз!',
                  () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                );
              },
              icon: const Icon(Icons.check),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Верно',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              style: const ButtonStyle(alignment: Alignment.centerLeft),
            ),
            const SizedBox(height: 20, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                showSuccess(
                  context,
                  'Верно, так держать!',
                  () async {
                    Navigator.pop(context);
                    await Future.delayed(const Duration(milliseconds: 500));
                    test2Controller.add(1);
                  },
                  '',
                );
              },
              icon: const Icon(Icons.check),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Неверно',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              style: const ButtonStyle(alignment: Alignment.centerLeft),
            ),
          ],
        ),
      );
}

class Test2Question2 extends StatefulWidget {
  const Test2Question2({Key? key}) : super(key: key);

  @override
  _Test2Question2State createState() => _Test2Question2State();
}

class _Test2Question2State extends State<Test2Question2> {
  late final TextEditingController editingController;

  @override
  void initState() {
    super.initState();
    editingController = TextEditingController();
  }

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const Text(
              'Выберите один или несколько вариантов ответа и введите их последовательно в поле ответа (регистр букв неважен).',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const RegularText(
              text:
                  '\nК основным коррупционным проявлениям в Российской империи можно отнести:'
                  '\nА) казнокрадство '
                  '\nБ) получение и дача взятки'
                  '\nВ) попустительство и недонесение о взяточничестве'
                  '\nГ) растраты'
                  '\nД) фаворитизм'
                  '\nЕ) система «кормлений»'
                  '\nЖ) конфликт интересов'
                  '\nЗ) все вышеперечисленное'
                  '\nИ) ничего из вышеперечисленного',
            ),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(controller: editingController),
            const SizedBox(height: 20, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if ((editingController.text.toLowerCase().contains('а') &&
                    editingController.text.toLowerCase().contains('б') &&
                    editingController.text.toLowerCase().contains('в') &&
                    editingController.text.toLowerCase().contains('г') &&
                    editingController.text.toLowerCase().contains('д') &&
                    !editingController.text.toLowerCase().contains('е') &&
                    !editingController.text.toLowerCase().contains('ж') &&
                    !editingController.text.toLowerCase().contains('з') &&
                    !editingController.text.toLowerCase().contains('и')) ||
                    (editingController.text.toLowerCase().contains('а)') &&
                    editingController.text.toLowerCase().contains('б)') &&
                    editingController.text.toLowerCase().contains('в)') &&
                    editingController.text.toLowerCase().contains('г)') &&
                    editingController.text.toLowerCase().contains('д)') &&
                    !editingController.text.toLowerCase().contains('е)') &&
                    !editingController.text.toLowerCase().contains('ж)') &&
                    !editingController.text.toLowerCase().contains('з)') &&
                    !editingController.text.toLowerCase().contains('и)'))) {
                  showSuccess(
                    context,
                    'Верно, полпути пройдено!',
                    () async {
                      Navigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 500));
                      test2Controller.add(2);
                    },
                    '',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Особенности государственной антикоррупционной политики в России» еще раз!',
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                }
              },
              icon: const Icon(Icons.check),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ответить',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              style: const ButtonStyle(alignment: Alignment.centerLeft),
            ),
          ],
        ),
      );
}

class Test2Question3 extends StatefulWidget {
  const Test2Question3({Key? key}) : super(key: key);

  @override
  _Test2Question3State createState() => _Test2Question3State();
}

class _Test2Question3State extends State<Test2Question3> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const Text(
              'Щелчком мыши/касанием сенсорного экрана выделите лишнее слово или слова.',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const RegularText(
              text:
                  '\nНа официальном уровне в СССР использовались такие формулировки как:',
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () {
                    showSuccess(
                      context,
                      'Верно, продолжаем!',
                      () async {
                        Navigator.pop(context);
                        await Future.delayed(const Duration(milliseconds: 500));
                        test2Controller.add(3);
                      },
                      '',
                    );
                  },
                  child: const RegularText(text: '«коррупция»,')),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Особенности государственной антикоррупционной политики в России» еще раз!',
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                },
                child: const RegularText(text: '«взяточничество»,'),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Особенности государственной антикоррупционной политики в России» еще раз!',
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                },
                child: const RegularText(
                    text: '«злоупотребление служебным положением»,'),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Особенности государственной антикоррупционной политики в России» еще раз!',
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                },
                child: const RegularText(text: '«должностные преступления».'),
              ),
            ),
          ],
        ),
      );
}

class Test2Question4 extends StatefulWidget {
  const Test2Question4({Key? key}) : super(key: key);

  @override
  _Test2Question4State createState() => _Test2Question4State();
}

class _Test2Question4State extends State<Test2Question4> {
  late final TextEditingController editingController;

  @override
  void initState() {
    super.initState();
    editingController = TextEditingController();
  }

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const Text(
              'Выберите один или несколько вариантов ответа и введите их последовательно в поле ответа (регистр букв неважен).',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const RegularText(
              text:
                  '\nВ современной России понятие «коррупция» включает в себя:'
                  '\nА) злоупотребление служебным положением'
                  '\nБ) дача взятки'
                  '\nВ) получение взятки'
                  '\nГ) злоупотребление полномочиями'
                  '\nД) коммерческий подкуп'
                  '\nЕ) мздоимство'
                  '\nЖ) лихоимство'
                  '\nЗ) все вышеперечисленное'
                  '\nИ) ничего из вышеперечисленного',
            ),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(controller: editingController),
            const SizedBox(height: 20, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if ((editingController.text.toLowerCase().contains('а') &&
                    editingController.text.toLowerCase().contains('б') &&
                    editingController.text.toLowerCase().contains('в') &&
                    editingController.text.toLowerCase().contains('г') &&
                    editingController.text.toLowerCase().contains('д') &&
                    !editingController.text.toLowerCase().contains('е') &&
                    !editingController.text.toLowerCase().contains('ж') &&
                    !editingController.text.toLowerCase().contains('з') &&
                    !editingController.text.toLowerCase().contains('и')) ||
                    (editingController.text.toLowerCase().contains('а)') &&
                    editingController.text.toLowerCase().contains('б)') &&
                    editingController.text.toLowerCase().contains('в)') &&
                    editingController.text.toLowerCase().contains('г)') &&
                    editingController.text.toLowerCase().contains('д)') &&
                    !editingController.text.toLowerCase().contains('е)') &&
                    !editingController.text.toLowerCase().contains('ж)') &&
                    !editingController.text.toLowerCase().contains('з)') &&
                    !editingController.text.toLowerCase().contains('и)'))) {
                  showSuccess(
                    context,
                    'Верно!',
                    () async {
                      secondTestPass = true;
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    'Впереди новый раздел для изучения!',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Особенности государственной антикоррупционной политики в России» ещё раз!',
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  );
                }
              },
              icon: const Icon(Icons.check),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ответить',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              style: const ButtonStyle(alignment: Alignment.centerLeft),
            ),
          ],
        ),
      );
}
