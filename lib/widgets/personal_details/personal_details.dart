import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/styles/text_styles.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;

        var crossAxisAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hey, I'm Josef.",
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "I graduated Technical University of Munich with a bachelor in Computer Science and a bachelor in Management & Technology. Currently, I am pursuing a consecutive Master in Computer Science. Get in touch if you want to chat.",
                style: descriptionTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
