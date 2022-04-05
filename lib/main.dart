import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/src/pages/home_page.dart';
import 'package:tes/src/pages/login_page.dart';
import 'package:tes/src/pages/perfil_page.dart';
import 'package:tes/src/services/tala_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TalaServices())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => LoginPage(),
          'home': (context) => HomePage(),
          'perfil': (context) => PefilPage(),
        },
        theme: ThemeData(
            colorScheme: ThemeData()
                .colorScheme
                .copyWith(primary: Color.fromARGB(250, 255, 207, 51))),
      ),
    );
  }
}
