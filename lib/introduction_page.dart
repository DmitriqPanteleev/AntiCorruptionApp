import 'package:flutter/material.dart';

import 'sidebar.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

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
                  left: 176,
                  right: 26,
                  top: 8,
                  bottom: 8,
                ),
                child: ListView(
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
                            "ВВЕДЕНИЕ",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Коррупция",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' (от лат. corruptio – порча, подкуп) в общем понимании – это преступление, заключающееся в прямом использовании должностным лицом прав, предоставленных ему по должности, в целях личного обогащения. Коррупцией называют также подкуп должностных лиц, их продажность.'
                                '\n\nКоррупция известна с глубокой древности, упоминание о ней встречается в сочинениях по искусству государственного управления, религиозной и юридической литературе Египта, Месопотамии, Иудеи, Индии и Китая, то есть во всех центрах древневосточных цивилизаций.'
                                '\n\nИсторические корни коррупции восходят к обычаю делать подарки вождям или жрецам в первобытном обществе, чтобы добиться их расположения. Дорогие подарки или подношения выгодно выделяли просящего из числа соплеменников, способствовали особому расположению лиц «обличенных властью» к просителю и скорейшему решению его личных вопросов. Поэтому на этапе ранней общественно-экономической формации – периода первобытно-общинного строя, такие отношения воспринимались как норма. С развитием государственности пришло понимание общественной опасности этого явления и началось формирование системы мер по противодействию коррупции.'
                                '\n\nВ древних цивилизациях использовались различные подходы в государственной антикоррупционной политике. Так, в текстах Древнего Египта указывается: «… Возвышай своих вельмож, чтобы они поступали по твоим законам. Непристрастен тот, кто богат в своем доме, он владыка вещей и не нуждается» (Поучение гераклеопольского царя своему сыну Мерикара, 2150-2050 гг. до н. э.). Такие антикоррупционные меры, используемые на заре современного мира, уместны и сегодня: существенное повышение должностных окладов государственных служащих в целях противодействия коррупции, например, легло в основу «сингапурского чуда» (Борьба с коррупцией в Сингапуре, 1965 г.).'
                                '\n\nНо первые антикоррупционные решения на государственном уровне были приняты раньше и стали масштабнее: царем Лагаша была сформирована полноценная законодательная основа противодействия коррупции в государстве, тем самым был заложен базис первой в истории человечества модели государственной антикоррупционной политики (Шумер, 2319-2311 гг. до н. э.).',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
