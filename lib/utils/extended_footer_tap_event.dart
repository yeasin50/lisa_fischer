import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import '../providers/settings.dart';
import '../widgets/widgets.dart';

// intial dialog after landing
Future<void> initalDialog(BuildContext c) async {
  WidgetsBinding.instance!.addPostFrameCallback(
    (_) async {
      if (Provider.of<ProjectSetting>(c, listen: false).showDialog) {
        await Future.delayed(ProjectSetting.initDialogDelay);
        _showDialog(c);
      }
    },
  );
}

// footer tap event
Future<void> showProjectInfo(BuildContext c) async {
  await _showDialog(c);
}

_showDialog(BuildContext c) async {
  await showDialog(
    context: c,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text("⚠ Clone project"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text.rich(
            TextSpan(
              style: AppTextStyles.normal,
              children: [
                TextSpan(
                  text:
                      "This is not Lisa Fischer's original portfolio. I've just clone it to practice flutter Framework.\n",
                ),
                TextSpan(
                  text: "Click to view the original\n",
                  style: AppTextStyles.normal.copyWith(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch("http://www.lisasuefischer.com/");
                    },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "Visibily of footer",
                style: AppTextStyles.normal.copyWith(
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                ),
              ),
              Consumer<ProjectSetting>(
                builder: (context, value, child) {
                  return Switch(
                    value: value.cloneInfoOnFooter,
                    onChanged: (isOn) {
                      if (isOn) {
                        value.showCloneInfoOnFooter();
                      } else {
                        value.hideCloneInfoOnFooter();
                      }
                    },
                  );
                },
              ),
            ],
          )
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        CustomButton(
          size: Size(180, 49),
          onTap: () {
            Provider.of<ProjectSetting>(c, listen: false).cancelDialog();
            Navigator.of(context).pop();
          },
          label: "I am aware of this",
        ),
      ],
    ),
  );
}
