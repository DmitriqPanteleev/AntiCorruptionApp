import 'package:flutter/material.dart';

import 'header_text.dart';



class TextMenu extends StatelessWidget {
  const TextMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            "СОДЕРЖАНИЕ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 8),
          RegularText(text: 'Введение'),
          SizedBox(height: 2),
          RegularText(
            text:
                'I. Государственная антикоррупционная политика: история и современность',
          ),
          SizedBox(height: 2),
          RegularText(
            text: 'Вопросы для самоконтроля',
          ),
          SizedBox(height: 2),
          RegularText(
            text:
                'II. Особенности государственной антикоррупционной политики в России',
          ),
          SizedBox(height: 2),
          RegularText(
            text: 'Вопросы для самоконтроля',
          ),
          SizedBox(height: 2),
          RegularText(
            text:
                'III. Современные модели государственной антикоррупционной политики ',
          ),
          SizedBox(height: 2),
          RegularText(
            text: 'Вопросы для самоконтроля',
          ),
          SizedBox(height: 2),
          RegularText(
            text: 'Заключение',
          ),
          SizedBox(height: 2),
          RegularText(
            text: 'Библиографический список и источники',
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 700,
            height: 10,
            child: Divider(
              thickness: 8,
              color: Colors.blueAccent,
            ),
          ),
        ],
      );
}
