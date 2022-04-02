import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'header_text.dart';
import 'sidebar.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                            "БИБЛИОГРАФИЧЕСКИЙ СПИСОК И ИСТОЧНИКИ",
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
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          const VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.red,
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    children: <Widget>[
                                      const RegularText(
                                          text:
                                              '\nШорохов В. Е. Перспективы антикоррупционной политики в современной России // Гуманитарные науки. Вестник Финансового университета. 2019. Т. 9. № 1. С. 66-70.'
                                              '\n\nШорохов В. Е. Актуальные вопросы антикоррупционного образования и культуры // Культура: управление, экономика, право. 2019. № 2. С. 29-34.'
                                              '\n\nШорохов В. Е. Мировые практики формирования системы антикоррупционного образования и подготовки в контексте развития гражданского общества // Гражданское общество в России и за рубежом. 2019. № 3. С. 11-14.'
                                              '\n\nШорохов В. Е. Антикоррупционная политика ООН и России: сравнительно-правовой аспект // Международное публичное и частное право. 2019. № 6. С. 36-39.'
                                              '\n\nШорохов В. Е. Правовые основы государственной антикоррупционной политики в России // Российская юстиция. 2019. № 11. С. 49-51.'
                                              '\n\nШорохов В. Е. Институциональные основы антикоррупционной политики в России: ретроспектива и современность // Гуманитарные науки. Вестник Финансового университета. 2020. Т. 10. № 2. С. 31-35.'
                                              '\n\nШорохов В. Е. Теория политики институциональности противодействия коррупции в органах публичной власти // Вестник Дипломатической академии МИД России. Россия и мир. 2020. № 3 (25). С. 53-71.'
                                              '\n\nШорохов В. Е. Понятие и основные модели современной государственной антикоррупционной политики // Российская юстиция. 2020. № 6. С. 2-4.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в России // Российская юстиция. 2020. № 9. С. 2-4.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в США и Канаде // Российская юстиция. 2020. № 12. С. 23-25.'
                                              '\n\nШорохов В. Е. Антикоррупционная политика и образовательные стратегии в современной России: монография. М.: Русайнс, 2020. 90 с.'
                                              '\n\nШорохов В. Е., Попов П. А. Противодействие коррупции в современной России: государственный и муниципальный уровень // Государственная власть и местное самоуправление. 2021. № 1. С. 53-57.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в странах Европейского союза // Российская юстиция. 2021. № 1. С. 27-29.'
                                              '\n\nСавинов Л. В., Шорохов В. Е. Сравнительный анализ антикоррупционной политики России и зарубежных стран // Сравнительная политика. 2021. Т. 12. № 2. С. 26-37.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в странах Восточной Азии // Российская юстиция. 2021. № 3. С. 20-22.'
                                              '\n\nШорохов В. Е. Политические механизмы формирования антикоррупционного сознания государственных и муниципальных служащих // Гуманитарные науки. Вестник Финансового университета. 2021. Т. 11. № 3. С. 99-104.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в странах Африки и Латинской Америки // Юридический мир. 2021. № 8. С. 56-59.'
                                              '\n\nШорохов В. Е. Современная модель государственной антикоррупционной политики в Индии и странах Ближнего Востока // Юридический мир. 2021. [в печати]'
                                              '\n\nШорохов В. Е. Историко-правовой аспект современного антикоррупционного правосознания на постсоветском пространстве // История государства и права. 2021. [в печати]'
                                              '\n\nШорохов В. Е. Система антикоррупционного SMART-образования муниципальных служащих на примере Красноярского края: отчет о НИР. Красноярск: ИГМУ, 2021. 50 с.'
                                              '\n\nСвидетельство о государственной регистрации программы для ЭВМ № 2021664382 Российская Федерация. «Программа для электронных образовательных ресурсов «Концепция современных моделей государственной антикоррупционной политики»: № 2021663531: заявл. 24.08.2021: опубл. 06.09.2021 / В. Е. Шорохов. '),
                                      RichText(
                                        textAlign: TextAlign.justify,
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            const TextSpan(
                                                text:
                                                    '\nИнтерактивная карта «Коррупция: прошлое и настоящее». Образовательная программа «Противодействие коррупции на муниципальном уровне» // ИГМУ при Правительстве Красноярского края. 2021. Режим доступа: ',
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 20)),
                                            TextSpan(
                                              text: 'http://imr-anons.ru/pk6',
                                              style: const TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 20,
                                                  decoration:
                                                      TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () => launch(
                                                    'http://imr-anons.ru/pk6'),
                                            )
                                          ],
                                        ),
                                      )
                                      // Text.rich(
                                      //   TextSpan(
                                      //     text: 'http://imr-anons.ru/pk6',
                                      //     mouseCursor: SystemMouseCursors.click,
                                      //     recognizer: TapGestureRecognizer()
                                      //       ..onTap = () => launch(
                                      //           'http://imr-anons.ru/pk6'),
                                      //     style: const TextStyle(
                                      //       color: Colors.blue,
                                      //       fontSize: 20,
                                      //       decoration:
                                      //           TextDecoration.underline,
                                      //     ),
                                      //   ),
                                      // ),
                                      // const SizedBox(height: 8,)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  )
                                ],
                              ),
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
