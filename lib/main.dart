import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'providers/providers.dart';

void main() {
  // setPathUrlStrategy();
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('fonts/Lato/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PageNotifier>(
          create: (context) => PageNotifier(),
        ),
        ChangeNotifierProvider<ProjectSetting>(
          create: (context) => ProjectSetting(),
        )
      ],
      child: MyApp(),
    ),
  );
}
