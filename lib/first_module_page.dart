import 'package:flutter/material.dart';

import 'header_text.dart';
import 'sidebar.dart';



class FirstModulePage extends StatelessWidget {
  const FirstModulePage({Key? key}) : super(key: key);

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
                            "I. ГОСУДАРСТВЕННАЯ АНТИКОРРУПЦИОННАЯ ПОЛИТИКА: ИСТОРИЯ И СОВРЕМЕННОСТЬ",
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
                                  Header2(
                                    text: 'Шумерская цивилизация'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        "Основные коррупционные проявления: ",
                                    regularText:
                                        'обман при сборе налогов и судебный произвол.',
                                  ),
                                  RichText(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.ltr,
                                    text: const TextSpan(
                                      style: TextStyle(fontSize: 20),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              "Система мер по противодействию коррупции: ",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'сформирована.',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
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
                                              "Особенности государственной антикоррупционной политики: ",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'царем Уруинимгина в городе Лагаш на территории современного Ирака более 4 тыс. лет назад были приняты первые в истории человечества антикоррупционные законы. Распространенным преступлением в государстве, например, было присвоение представителями власти имущества под видом его покупки, в этих случаях устанавливалось, что «царь приказал платить за купленного осла или дом по справедливой цене – "хорошим серебром"».',
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
                                  Header2(
                                      text: 'Вавилонское государство'
                                          .toUpperCase()),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText: 'судебный произвол. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'в Вавилоне на государственном уровне признавалось: «Если судья рассмотрел дело, вынес решение, и есть документ с печатью, а потом решение свое изменил, то этого судью надо разоблачить, и исковую сумму по делу он должен заплатить в двенадцатикратном размере». Кроме того, он подлежал «люстрации» – ему запрещали впредь занимать судейскую должность.',
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
                                  Header2(
                                    text: 'Древнеегипетская цивилизация'
                                        .toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий и судебный произвол. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'за коррупционные правонарушения в Древнем Египте отрезали носы судьям-взяточникам, а коррупционерам на высших должностях отрезали не только нос, но и уши. Также каждый уличенный в коррупционных преступлениях становился рабом до конца жизни в назидание остальным.',
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
                                  Header2(
                                    text: 'Древнеримская цивилизация'
                                        .toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий и судебный произвол.',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'Риму мы обязаны и самим термином «коррупция» (corrumpere), который переводится как «портить», «повреждать». Про коррупцию идет речь в «Двенадцати таблицах» – кодексе древнейших римских законов. Термин «сorrumpere» там используется в значении «подкупать судью». Рим вошел в историю не только коррупцией, которая в конце концов стала одной из причин краха империи, но и тем, что подарил человечеству первый антикоррупционный суд. Он рассматривал «repеtundarum crimen», то есть злоупотребление властью ради обогащения. ',
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
                                  Header2(
                                    text: 'Персидское царство'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий и судебный произвол. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'преступление в Персии, например, взятка судье – каралось смертью. Показателен случай: на взятке попался судья и когда об этом узнал царь, он приказал поймать виновного, убить его, снять кожу и оббить ею стул судьи, а на вакантное место назначить его сына для вынесения справедливых решений.',
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
                                  Header2(
                                    text: 'Индийская цивилизация'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий произвол и казнокрадство.',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'современники перечисляли сорок схем, которые позволяли красть у государства: «Точно так же, как нельзя распознать, пьют ли рыбы воду, в которой плавают, невозможно определить, крадут ли чиновники имущество, к которому приставлены». Доносчик на коррупционера в Древней Индии получал в качестве вознаграждения часть его конфискованного имущества.',
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
                                  Header2(
                                    text: 'Византийская империя'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий произвол и покупка должностей.',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'на протяжении столетий в государстве существовала практика продажи чиновничьих должностей. Коррупция в Византии приобрела такой размах, что император Юстиниан Великий провел масштабную административную реформу, которая должна была устранить покупку должностей чиновниками, но, как показало время, проблему коррупции это не решило.',
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
                                  Header2(
                                      text:
                                          'Монгольская империя'.toUpperCase()),
                                  const RichTwoPartText(
                                      boldText:
                                          'Основные коррупционные проявления: ',
                                      regularText:
                                          'чиновничий произвол и мздоимство. '),
                                  const RichTwoPartText(
                                      boldText:
                                          'Система мер по противодействию коррупции: ',
                                      regularText: 'сформирована. '),
                                  const RichTwoPartText(
                                      boldText:
                                          'Особенности государственной антикоррупционной политики: ',
                                      regularText:
                                          'за коррупционные преступления в империи Чингисхана и его преемников полагалась неминуемая смерть, но был выбор способа исполнения приговора, например, перелом позвоночника, когда пятки преступника прижимали к его затылку.'),
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
                                  Header2(
                                    text: 'Империя Мали'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'чиновничий произвол и взяточничество.',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'для взяточников в Западной Африке было предусмотрено наказание, отражавшее, несмотря на уже утвердившийся на государственном уровне ислам, традиционные шаманистические верования населения (и потому понятное для всех) – в задний проход провинившегося медленно вводился раскаленный рог носорога. Коррупционер умирал в страшных муках и далеко не сразу.',
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
                                  Header2(
                                    text: 'Османская империя'.toUpperCase(),
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Основные коррупционные проявления: ',
                                    regularText:
                                        'судебный и чиновничий произвол, покупка должностей.',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Особенности государственной антикоррупционной политики: ',
                                    regularText:
                                        'многие жители Османской империи старались не предавать гласности совершенные против них преступления – приезд судьи был более разорительным и опасным, чем ущерб от злоумышленников. Общим итогом коррупции в империи стала потеря боеспособности армии и, как следствие, череда военных поражений, полностью подорвавших могущество этого государства.',
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
                                  Header2(
                                    text: 'Организация Объединенных Наций (ООН)'
                                        .toUpperCase(),
                                  ),
                                  const RegularText(
                                    text:
                                        'На современном этапе мирового развития понятие «коррупция» на международном уровне впервые было определено в Кодексе поведения должностных лиц по поддержанию правопорядка, принятом Генеральной Ассамблеей Организации Объединенных Наций 17 декабря 1979 года, и в дальнейшем было более подробно раскрыто в иных международных актах. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText: 'Коррупция: ',
                                    regularText:
                                        'совершение или несовершение какого-либо действия при исполнении обязанностей в результате требуемых или принятых подарков, обещаний или стимулов или их незаконное получение всякий раз, когда имеет место такое действие или бездействие. ',
                                  ),
                                  const RichTwoPartText(
                                    boldText:
                                        'Система мер по противодействию коррупции: ',
                                    regularText: 'сформирована. ',
                                  ),
                                  const RegularText(
                                    text:
                                        'На межгосударственном уровне нормы противодействия коррупции закреплены в различных документах, издание которых инициировалось Организацией Объединенных Наций параллельно с осознанием общественной опасности этого явления, например:'
                                        '\n   - Справочный документ о международной борьбе с коррупцией от 13 апреля 1995 года;'
                                        '\n   - Декларация о борьбе с коррупцией и взяточничеством в международных коммерческих операциях от 16 декабря 1996 года;'
                                        '\n   - Конвенция против транснациональной организованной преступности от 15 ноября 2000 года;'
                                        '\n   - Конвенция против коррупции от 31 октября 2003 года.',
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
