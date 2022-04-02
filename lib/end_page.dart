import 'package:flutter/material.dart';

import 'sidebar.dart';


class EndPage extends StatelessWidget {
  const EndPage({Key? key}) : super(key: key);

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
                            "ЗАКЛЮЧЕНИЕ",
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
                    RichText(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '\n\nВ современной России на сегодняшний день противодействие коррупции и выработка эффективных направлений антикоррупционной политики осуществляется как на федеральном, так и на региональном и муниципальном уровнях. Сложившуюся ',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text:
                                'модель государственной антикоррупционной политики в Российской Федерации, в силу географического положения, исторического и культурного развития, государственного устройства, ряда других причин, можно охарактеризовать как «смешанную» и находящуюся в процессе становления. ',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n\nВ связи с этим, формирование и развитие российской модели должно учитывать международный подход к проблеме коррупции, существующую национальную специфику антикоррупционных институтов и практику правоприменения, а также институциональную взаимосвязь и взаимозависимость принимаемых государством мер по противодействию коррупции. Безусловно, значимым здесь является восприятие и адаптация положительного опыта других стран, особенно с точки зрения полноценного и эффективного использования в национальной антикоррупционной «траектории» превентивных мер культурного, образовательного и иного характера.',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n\nВ то же время Российская Федерация оказывала и оказывает значительное влияние на формирование моделей государственной антикоррупционной политики отдельных постсоветских стран, а в контексте общей «постсоветской» модели современная Россия задает определенные антикоррупционные «тренды» практически на всем постсоветском пространстве, что, в свою очередь, накладывает и особую ответственность в этой сфере на нашу страну.',
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
