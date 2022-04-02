import 'package:flutter/material.dart';

import 'package:flutter_beautiful_popup/main.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );
}

class Header2 extends StatelessWidget {
  final String text;

  const Header2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      );
}

class RichTwoPartText extends StatelessWidget {
  final String boldText;
  final String regularText;

  const RichTwoPartText(
      {Key? key, required this.boldText, required this.regularText})
      : super(key: key);

  @override
  Widget build(BuildContext context) => RichText(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.justify,
        text: TextSpan(
          style: const TextStyle(fontSize: 20),
          children: <TextSpan>[
            TextSpan(
              text: boldText,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: regularText,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
}

class RegularText extends StatelessWidget {
  final String text;

  const RegularText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 20),
      );
}

void showSuccess(
  BuildContext context,
  String text,
  VoidCallback function,
  String description,
) {
  final popup = BeautifulPopup(
    context: context,
    template: TemplateSuccess,
  );
  popup.show(
    title: text,
    close: Container(),
    content: SizedBox(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: popup.primaryColor,
        ),
      ),
    ),
    actions: <Widget>[
      popup.button(
        label: 'Далее',
        onPressed: function,
      ),
    ],
  );
}

void showFail(BuildContext context, String text, String description,
    VoidCallback function) {
  final popup = BeautifulPopup(
    context: context,
    template: TemplateFail,
  );
  popup.show(
    close: Container(),
    title: text,
    content: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: popup.primaryColor,
        ),
      ),
    ),
    actions: <Widget>[
      popup.button(
        label: 'Далее',
        onPressed: function,
      ),
    ],
  );
}
