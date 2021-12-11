import 'dart:async';

import 'package:flutter/material.dart';

import '/configs/configs.dart';
import '/utils/utils.dart';
import '../../providers/providers.dart';
import 'Work.dart';

///`HomePage`
class WorkPage extends StatefulWidget {
  static const String routename = "/";

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  void initState() {
    super.initState();
    Timer.run(
      () async {
        dynamicAppLabel(context: context, label: "Lisa Fischer");

        final showDialog =
            Provider.of<ProjectSetting>(context, listen: false).showDialog;
        if (showDialog) {
          await Future.delayed(ProjectSetting.initDialogDelay);
          showProjectInfo(context);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: DesktopViewWrapper(
            child: DesktopView(),
          ),
          tablet: TabletViewWrapper(
            child: TabletView(),
          ),
          mobile: MobieViewWrapper(
            child: MobileView(),
          ),
        ),
      ),
    );
  }
}
