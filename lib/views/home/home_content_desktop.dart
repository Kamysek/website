import 'package:flutter/material.dart';
import 'package:website/constants/links.dart';
import 'package:website/widgets/call_to_action/call_to_action.dart';
import 'package:website/widgets/personal_details/personal_details.dart';
import 'dart:html' as html;

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        PersonalDetails(),
        Expanded(
          child: Center(
            child: GestureDetector(
              onTap: (){
                html.window.open(linkedInUrl , 'new tab');
              },
              child: CallToAction('Contact Me!')),
          ),
        )
      ],
    );
  }
}
