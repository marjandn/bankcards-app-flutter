import 'package:bank_cards/cards_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
 
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const  [
        Locale("fa", "IR"), 
      ],
      locale: const Locale("fa", "IR"), 
      theme: ThemeData(
          fontFamily: 'Shabnam',
          primaryColor: const Color(0xFFFEFCFF), 
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: const Color(0xFFFEFCFF),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.black, displayColor: Colors.black, fontFamily: 'Shabnam'),
      ),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: CardsPage(),
      ),
    );
  }
}
