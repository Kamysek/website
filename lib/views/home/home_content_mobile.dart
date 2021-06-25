import 'package:flutter/material.dart';
import 'package:website/constants/links.dart';
import 'package:website/widgets/call_to_action/call_to_action.dart';
import 'package:website/widgets/personal_details/personal_details.dart';
import 'dart:html' as html;

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PersonalDetails(),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
            onTap: () {
              html.window.open(linkedInUrl, 'new tab');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CallToAction('Contact Me!'),
            )),
      ],
    );
  }
}
