import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/widget/card_myappoinment.dart';

class TesLayout extends StatefulWidget {
  const TesLayout({Key? key}) : super(key: key);

  @override
  _TesLayoutState createState() => _TesLayoutState();
}

class _TesLayoutState extends State<TesLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardMyAppointment()
      ),
    );
  }
}
