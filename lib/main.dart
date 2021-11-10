import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'providers/provider.navigator.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<PageNotifier>(
            create: (context) => PageNotifier(),
          ),
        ],
        child: MyApp(),
      ),
    );
