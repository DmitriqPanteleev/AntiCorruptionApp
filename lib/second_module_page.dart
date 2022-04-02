import 'package:flutter/material.dart';

import 'header_text.dart';
import 'sidebar.dart';

class SecondModulePage extends StatelessWidget {
  const SecondModulePage({Key? key}) : super(key: key);

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
                            "II. ОСОБЕННОСТИ ГОСУДАРСТВЕННОЙ АНТИКОРРУПЦИОННОЙ ПОЛИТИКИ В РОССИИ",
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
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    children: <Widget>[
                                      Header2(
                                          text:
                                              'Русское царство'.toUpperCase()),
                                      const RichTwoPartText(
                                          boldText:
                                              'Основные коррупционные проявления: ',
                                          regularText:
                                              'взятки и посулы, неправый суд за взятку или в результате пристрастного отношения к подсудимому по мотивам дружбы или вражды, мздоимство и лихоимство, подлоги по службе и «мнимое посредничество».'),
                                      const RichTwoPartText(
                                          boldText:
                                              'Система мер по противодействию коррупции: ',
                                          regularText: 'сформирована.'),
                                      const RichTwoPartText(
                                          boldText:
                                              'Особенности государственной антикоррупционной политики: ',
                                          regularText:
                                              'первое законодательное ограничение коррупционных действий на Руси принадлежит Ивану III. Его внук Иван IV Васильевич Грозный ввел в действие Судебник 1550 года и Судную грамоту 1561 года, которыми мздоимство признавалось уголовным преступлением. В качестве мер ответственности предусматривалось наказание в виде временного и бессрочного тюремного заключения, а также смертной казни. В этот же период случился практически единственный народный бунт антикоррупционной направленности. Он произошел в Москве в 1648 году и закончился победой населения: царем были отданы на растерзание толпе два коррумпированных «министра» – глава Земского приказа Плещеев и глава Пушкарского приказа Траханиотов.'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          const VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    children: <Widget>[
                                      Header2(
                                          text: 'Российская империя'
                                              .toUpperCase()),
                                      const RichTwoPartText(
                                          boldText:
                                              'Основные коррупционные проявления: ',
                                          regularText:
                                              'казнокрадство, получение и дача взятки, попустительство и недонесение о взяточничестве, злоупотребление властью в корыстных целях, растраты, присвоения и использования в своих интересах «денег государственных» с совершением подлога в отчетности, фаворитизм.'),
                                      const RichTwoPartText(
                                          boldText:
                                              'Система мер по противодействию коррупции: ',
                                          regularText: 'сформирована.'),
                                      const RichTwoPartText(
                                          boldText:
                                              'Особенности государственной антикоррупционной политики: ',
                                          regularText:
                                              'при Петре I было окончательно покончено с системой кормлений, что, конечно, не исключало незаконных поборов и прочее «лихоимство» и «мздоимство». Под лихоимством стали понимать принятие должностным лицом органов государственной власти и управления взятки за совершение действий или бездействие по службе, если при этом происходило нарушение этим лицом служебных обязанностей. Если же должностное лицо органов государственной власти и управления за полученное не предусмотренного законом вознаграждение совершало действие или бездействовало в пределах круга своих полномочии по службе, то такое преступление называлось мздоимством. Система наказаний включала как уголовные, так и исправительные виды и колебалась от строгого выговора до ссылки на каторжные работы в зависимости от тяжести совершенного преступления и тяжести наступавших последствий. Также были предусмотрены меры материального возмещения причиненного вреда.'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          const VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    children: <Widget>[
                                      Header2(
                                          text:
                                              'Союз Советских Социалистических Республик (СССР)'
                                                  .toUpperCase()),
                                      const RichTwoPartText(
                                          boldText:
                                              'Основные коррупционные проявления: ',
                                          regularText:
                                              'Понятие «коррупция» не использовалось: на официальном уровне употреблялись такие формулировки как «взяточничество», «злоупотребление служебным положением», «должностные преступления» и т. п. '),
                                      const RichTwoPartText(
                                          boldText:
                                              'Система мер по противодействию коррупции: ',
                                          regularText: 'сформирована. '),
                                      const RichTwoPartText(
                                          boldText:
                                              'Особенности государственной антикоррупционной политики: ',
                                          regularText:
                                              'Советская власть с самого начала своего существования объявила войну коррупции. Подтверждением этому является принятие Декрета Совета Народных Комиссаров РСФСР от 8 мая 1918 года «О взяточничестве». В Декрете были закреплены положения относительно единой уголовной ответственности всех участников коррупционных отношений. Так, равному наказанию с лицами, состоящими на государственной или общественной службе в РСФСР и виновными в принятии взятки, подвергались не только непосредственно взяткодатели, но и подстрекатели, пособники и все имеющие отношения к подкупу. В. И. Ленин считал взяточничество одним из опаснейших пережитков и требовал для борьбы с ним самых суровых, подчас «варварских», по его выражению, мер, так как сама борьба ведется против варварства.'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          const VerticalDivider(
                            width: 20,
                            thickness: 8,
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.withOpacity(0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    children: <Widget>[
                                      Header2(
                                          text: 'Российская Федерация'
                                              .toUpperCase()),
                                      const RegularText(
                                          text:
                                              'В современной России понятие «коррупция» раскрывается в Федеральном законе от 25 декабря 2008 года № 273-ФЗ «О противодействии коррупции» путем перечисления форм противоправных действий.'),
                                      const RichTwoPartText(
                                        boldText: "Коррупция:",
                                        regularText:
                                            "\n   - злоупотребление служебным положением, дача взятки, получение взятки, злоупотребление полномочиями, коммерческий подкуп либо иное незаконное использование физическим лицом своего должностного положения вопреки законным интересам общества и государства в целях получения выгоды в виде денег, ценностей, иного имущества или услуг имущественного характера, иных имущественных прав для себя или для третьих лиц либо незаконное предоставление такой выгоды указанному лицу другими физическими лицами; \n   - совершение указанных деяний, от имени или в интересах юридического лица.",
                                      ),
                                      const RichTwoPartText(
                                        boldText:
                                            'Система мер по противодействию коррупции: ',
                                        regularText: 'сформирована. ',
                                      ),
                                      const RegularText(
                                        text:
                                            'Под противодействием коррупции понимается деятельность федеральных органов государственной власти, органов государственной власти субъектов Российской Федерации, органов местного самоуправления, институтов гражданского общества, организаций и физических лиц в пределах их полномочий:'
                                            '\n   - по предупреждению коррупции, в том числе по выявлению и последующему устранению причин коррупции (профилактика коррупции);'
                                            '\n   - по выявлению, предупреждению, пресечению, раскрытию и расследованию коррупционных правонарушений (борьба с коррупцией);'
                                            '\n   - по минимизации и (или) ликвидации последствий коррупционных правонарушений.',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
