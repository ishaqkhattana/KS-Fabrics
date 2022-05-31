import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ks_fabrics/constants.dart';
import 'package:ks_fabrics/routs.dart';
import 'package:ks_fabrics/screens/splash/splash_screen.dart';
import 'package:ks_fabrics/theme.dart';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'models/ModelProvider.dart';
import 'amplifyconfiguration.dart';



void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   // This widget is the root of your application.
//   @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter Demo',
  //     theme: theme(),
  //     initialRoute: SplashScreen.routeName,
  //     routes: routes,
  //   );
  // }
// }

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
    void initState() {
        super.initState();
        _configureAmplify();
    }

    void _configureAmplify() async {
        // Add the following line to add API plugin to your app
        await Amplify.addPlugin(AmplifyAPI(modelProvider: ModelProvider.instance));
        await Amplify.addPlugin(AmplifyAuthCognito());
          debugPrint('movieTitle:');

        try {
            await Amplify.configure(amplifyconfig);
        } on AmplifyAlreadyConfiguredException {
            print("Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
        }
    }
}