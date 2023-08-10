import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/home/home_page.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';
import 'package:flutter_inherited_widget_example/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Fabrício Suhet',
      imgAvatar: 'https://f.i.uol.com.br/fotografia/2020/02/10/15813740235e41da475cca0_1581374023_3x2_md.jpg',
      birthDay: '15/03/2000',
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes:  {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}



