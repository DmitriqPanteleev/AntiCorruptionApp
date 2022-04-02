import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'header_text.dart';
import 'main.dart';

StreamController<int> test3Controller = StreamController<int>.broadcast();

class Test3Page extends StatefulWidget {
  const Test3Page({Key? key}) : super(key: key);

  @override
  _Test3PageState createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  int question = 0;

  @override
  void initState() {
    super.initState();
    test3Controller.stream.listen((event) {
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
              ThirdPicker(question: question),
            ],
          ),
        ),
      );
}

class ThirdPicker extends StatefulWidget {
  const ThirdPicker({Key? key, required this.question}) : super(key: key);

  final int question;

  @override
  _ThirdPickerState createState() => _ThirdPickerState();
}

class _ThirdPickerState extends State<ThirdPicker> {
  @override
  Widget build(BuildContext context) {
    switch (widget.question) {
      case 0:
        return const Test3Question1();
      case 1:
        return const Test3Question2();
      case 2:
        return const Test3Question3();
      case 3:
        return const Test3Question4();
    }
    return Container();
  }
}

class Test3Question1 extends StatefulWidget {
  const Test3Question1({Key? key}) : super(key: key);

  @override
  _Test3Question1State createState() => _Test3Question1State();
}

class _Test3Question1State extends State<Test3Question1> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const RegularText(
                text:
                    'Верно ли утверждение: «Модель государственной антикоррупционной политики представляет собой совокупность мер и механизмов, закрепленных на уровне норм национального и связанного с ними международного права, направленных как на противодействие коррупционным правонарушениям, а также иным действиям коррупционного характера, так и на их предупреждение»?'),
            const SizedBox(height: 40, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                showSuccess(
                  context,
                  'Верно, так держать!',
                  () async {
                    Navigator.pop(context);
                    await Future.delayed(const Duration(milliseconds: 500));
                    test3Controller.add(1);
                  },
                  '',
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
                showFail(
                  context,
                  'Неверно!',
                  'Стоит изучить раздел «Современные модели государственной антикоррупционной политики» еще раз!',
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

class Test3Question2 extends StatefulWidget {
  const Test3Question2({Key? key}) : super(key: key);

  @override
  _Test3Question2State createState() => _Test3Question2State();
}

class _Test3Question2State extends State<Test3Question2> {
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
                  '\nКонцепция современных моделей государственной антикоррупционной политики объединяет в себе следующие основные модели:'
                  '\nА) Североамериканская модель'
                  '\nБ) модель стран Европейского союза'
                  '\nВ) модель стран Азии'
                  '\nГ) модель стран Латинской Америки'
                  '\nД) модель стран Африки'
                  '\nЕ) Индийская модель'
                  '\nЖ) модель стран Ближнего Востока'
                  '\nЗ) модели постсоветского пространства'
                  '\nИ) модели скандинавских стран '
                  '\nК) модель стран Азиатско-Тихоокеанского региона'
                  '\nЛ) Японская модель'
                  '\nМ) Английская модель'
                  '\nН) Германская модель',
            ),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(
              controller: editingController,
            ),
            const SizedBox(height: 20, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if ((editingController.text.toLowerCase().contains('а') &&
                    editingController.text.toLowerCase().contains('б') &&
                    editingController.text.toLowerCase().contains('в') &&
                    editingController.text.toLowerCase().contains('г') &&
                    editingController.text.toLowerCase().contains('д') &&
                    editingController.text.toLowerCase().contains('е') &&
                    editingController.text.toLowerCase().contains('ж') &&
                    editingController.text.toLowerCase().contains('з') &&
                    !editingController.text.toLowerCase().contains('и') &&
                    !editingController.text.toLowerCase().contains('к') &&
                    !editingController.text.toLowerCase().contains('л') &&
                    !editingController.text.toLowerCase().contains('м') &&
                    !editingController.text.toLowerCase().contains('н')) ||
                    (editingController.text.toLowerCase().contains('а)') &&
                    editingController.text.toLowerCase().contains('б)') &&
                    editingController.text.toLowerCase().contains('в)') &&
                    editingController.text.toLowerCase().contains('г)') &&
                    editingController.text.toLowerCase().contains('д)') &&
                    editingController.text.toLowerCase().contains('е)') &&
                    editingController.text.toLowerCase().contains('ж)') &&
                    editingController.text.toLowerCase().contains('з)') &&
                    !editingController.text.toLowerCase().contains('и)') &&
                    !editingController.text.toLowerCase().contains('к)') &&
                    !editingController.text.toLowerCase().contains('л)') &&
                    !editingController.text.toLowerCase().contains('м)') &&
                    !editingController.text.toLowerCase().contains('н)'))) {
                  showSuccess(
                    context,
                    'Верно, полпути пройдено!',
                    () async {
                      Navigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 500));
                      test3Controller.add(2);
                    },
                    '',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Современные модели государственной антикоррупционной политики» еще раз!',
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

class Test3Question3 extends StatefulWidget {
  const Test3Question3({Key? key}) : super(key: key);

  @override
  _Test3Question3State createState() => _Test3Question3State();
}

class _Test3Question3State extends State<Test3Question3> {
  late final TextEditingController editingController1;
  late final TextEditingController editingController2;
  late final TextEditingController editingController3;
  late final TextEditingController editingController4;
  late final TextEditingController editingController5;
  late final TextEditingController editingController6;
  late final TextEditingController editingController7;

  @override
  void initState() {
    super.initState();
    editingController1 = TextEditingController();
    editingController2 = TextEditingController();
    editingController3 = TextEditingController();
    editingController4 = TextEditingController();
    editingController5 = TextEditingController();
    editingController6 = TextEditingController();
    editingController7 = TextEditingController();
  }

  @override
  void dispose() {
    editingController1.dispose();
    editingController2.dispose();
    editingController3.dispose();
    editingController4.dispose();
    editingController5.dispose();
    editingController6.dispose();
    editingController7.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            const Text(
              'Соотнесите модели государственной антикоррупционной политики и их особенности.',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'А) Североамериканская модель'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '1) семейственность, первостепенность значения структуры собственности'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'Б) Модель стран Европейского союза'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '2) специфическая структура органов, отвечающих за противодействие коррупции, сложная иерархия источников правового регулирования ответственности за коррупцию'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'В) Модель стран Латинской Америки'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '3) наличие у органов власти, ответственных за реализацию антикоррупционных мер, неопределенного круга полномочий'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'Г) Модель стран Азии'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '4) установление исключительно высоких мер ответственности за коррупцию'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'Д) Модель стран Африки'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '5) сочетание правовых и неправовых средств противодействия коррупции, тесной взаимосвязи между представителями власти и представителями криминальных кругов'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'Е) Индийская модель'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '6) тенденция к выработке единых положений, способствующих борьбе с коррупцией, связанных со свободой перемещения капиталов между странами'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(text: 'Ж) Модель стран Ближнего Востока'),
                    ),
                  ),
                ),
                FittedBox(
                  child: Container(
                    width: 800,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RegularText(
                          text: '7) тесная взаимосвязь экономических механизмов с предупреждением коррупционных действий  '),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'А)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'Б)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'В)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'Г)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'Д)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'Е)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController6,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: const Text(
                        'Ж)',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CupertinoTextField(
                        controller: editingController7,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  if ((editingController1.text.toLowerCase() == '7' &&
                      editingController2.text.toLowerCase() == '6' &&
                      editingController3.text.toLowerCase() == '5' &&
                      editingController4.text.toLowerCase() == '4' &&
                      editingController5.text.toLowerCase() == '3' &&
                      editingController6.text.toLowerCase() == '2' &&
                      editingController7.text.toLowerCase() == '1') ||
                      (editingController1.text.toLowerCase() == '7)' &&
                      editingController2.text.toLowerCase() == '6)' &&
                      editingController3.text.toLowerCase() == '5)' &&
                      editingController4.text.toLowerCase() == '4)' &&
                      editingController5.text.toLowerCase() == '3)' &&
                      editingController6.text.toLowerCase() == '2)' &&
                      editingController7.text.toLowerCase() == '1)')) {
                    showSuccess(
                      context,
                      'Верно, продолжаем!',
                      () async {
                        Navigator.pop(context);
                        await Future.delayed(const Duration(milliseconds: 500));
                        test3Controller.add(3);
                      },
                      '',
                    );
                  } else {
                    showFail(
                      context,
                      'Неверно!',
                      'Стоит изучить раздел «Современные модели государственной антикоррупционной политики» еще раз!',
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
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
}

class Test3Question4 extends StatefulWidget {
  const Test3Question4({Key? key}) : super(key: key);

  @override
  _Test3Question4State createState() => _Test3Question4State();
}

class _Test3Question4State extends State<Test3Question4> {
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
            const SizedBox(height: 20, width: 50),
            const RegularText(
                text:
                    'Современные модели государственной антикоррупционной политики постсоветского пространства объединяют в себе следующие группы стран:'
                    '\nА) страны Прибалтики'
                    '\nБ) страны Восточной Европы'
                    '\nВ) страны Закавказья'
                    '\nГ) страны Центральной Азии'
                    ''),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(controller: editingController),
            const SizedBox(height: 20, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if ((editingController.text.toLowerCase().contains('а') &&
                    editingController.text.toLowerCase().contains('б') &&
                    editingController.text.toLowerCase().contains('в') &&
                    editingController.text.toLowerCase().contains('г')) ||
                    (editingController.text.toLowerCase().contains('а)') &&
                    editingController.text.toLowerCase().contains('б)') &&
                    editingController.text.toLowerCase().contains('в)') &&
                    editingController.text.toLowerCase().contains('г)'))) {
                  showSuccess(
                    context,
                    'Верно!',
                    () async {
                      thirdTestPass = true;
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    'Подведем итоги?',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Современные модели государственной антикоррупционной политики» еще раз!',
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
