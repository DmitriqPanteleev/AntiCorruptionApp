import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'header_text.dart';
import 'main.dart';



StreamController<int> test1Controller = StreamController<int>.broadcast();

class Test1Page extends StatefulWidget {
  const Test1Page({Key? key}) : super(key: key);

  @override
  _Test1PageState createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  int question = 0;

  @override
  void initState() {
    super.initState();
    test1Controller.stream.listen((event) {
      if (mounted) {
        setState(() => question = event);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
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
                FirstPicker(question: question),
              ],
            ),
          ),
        ),
      );
}

class FirstPicker extends StatefulWidget {
  const FirstPicker({Key? key, required this.question}) : super(key: key);

  final int question;

  @override
  _FirstPickerState createState() => _FirstPickerState();
}

class _FirstPickerState extends State<FirstPicker> {
  @override
  Widget build(BuildContext context) {
    switch (widget.question) {
      case 0:
        return const Test1Question1();
      case 1:
        return const Test1Question2();
      case 2:
        return const Test1Question3();
      case 3:
        return const Test1Question4();
    }
    return Container();
  }
}

class Test1Question1 extends StatefulWidget {
  const Test1Question1({Key? key}) : super(key: key);

  @override
  _Test1Question1State createState() => _Test1Question1State();
}

class _Test1Question1State extends State<Test1Question1> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const RegularText(
                text:
                    'Верно ли утверждение: «Во времена Шумерской цивилизации система мер по противодействию коррупции еще не была сформирована и говорить о какой-либо антикоррупционной политике в этот исторический период нет смысла»?'),
            const SizedBox(height: 40, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                showFail(
                  context,
                  'Неверно!',
                  'Стоит изучить раздел «Государственная антикоррупционная политика: история и современность» еще раз!',
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
                    test1Controller.add(1);
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

class Test1Question2 extends StatefulWidget {
  const Test1Question2({Key? key}) : super(key: key);

  @override
  _Test1Question2State createState() => _Test1Question2State();
}

class _Test1Question2State extends State<Test1Question2> {
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
              'Введите в качестве ответа одно слово (регистр букв неважен).',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const RegularText(
              text:
                  '\nДревнеримской цивилизации человечество обязано термином, который переводится как «портить», «повреждать» – это',
            ),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(controller: editingController),
            const SizedBox(height: 35, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if (editingController.text.toLowerCase() == 'коррупция') {
                  showSuccess(
                    context,
                    'Верно, полпути пройдено!',
                    () async {
                      Navigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 500));
                      test1Controller.add(2);
                    },
                    '',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Государственная антикоррупционная политика: история и современность» еще раз!',
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

class Test1Question3 extends StatefulWidget {
  const Test1Question3({Key? key}) : super(key: key);

  @override
  _Test1Question3State createState() => _Test1Question3State();
}

class _Test1Question3State extends State<Test1Question3> {
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
                  '\nЗа совершение коррупционных правонарушений в Империи Мали предусматривались такие виды наказаний как:'
                  '\nА) штраф'
                  '\nБ) выговор'
                  '\nВ) лишение права занимать определенные должности или заниматься определенной деятельностью'
                  '\nГ) исправительные и принудительные работы'
                  '\nД) ограничение свободы'
                  '\nЕ) лишение свободы на определенный срок'
                  '\nЖ) все вышеперечисленное'
                  '\nЗ) ничего из вышеперечисленного',
            ),
            const SizedBox(height: 40, width: 50),
            CupertinoTextField(
              controller: editingController,
            ),
            const SizedBox(height: 35, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                if (editingController.text.toLowerCase() == 'з' || editingController.text.toLowerCase() == "з)") {
                  showSuccess(
                    context,
                    'Верно, продолжаем!',
                    () async {
                      Navigator.pop(context);
                      await Future.delayed(const Duration(milliseconds: 500));
                      test1Controller.add(3);
                    },
                    '',
                  );
                } else {
                  showFail(
                    context,
                    'Неверно!',
                    'Стоит изучить раздел «Государственная антикоррупционная политика: история и современность» еще раз!',
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

class Test1Question4 extends StatefulWidget {
  const Test1Question4({Key? key}) : super(key: key);

  @override
  _Test1Question4State createState() => _Test1Question4State();
}

class _Test1Question4State extends State<Test1Question4> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 10.1,
        child: ListView(
          children: <Widget>[
            const RegularText(
                text:
                    'Верно ли утверждение: «На современном этапе мирового развития понятие «коррупция» на международном уровне впервые было определено Организацией Объединенных Наций 17 декабря 1979 года»?'),
            const SizedBox(height: 40, width: 50),
            ElevatedButton.icon(
              onPressed: () {
                showSuccess(
                  context,
                  'Верно!',
                  () {
                    firstTestPass = true;
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  'Впереди новый раздел для изучения!',
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
                  'Стоит изучить раздел «Государственная антикоррупционная политика: история и современность» еще раз!',
                  () async {
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
