import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/style/theme.dart';

class CardDoctor extends StatefulWidget {
  String doctor;
  String name;
  String specialist;

  CardDoctor(
      {required this.doctor, required this.name, required this.specialist});

  @override
  State<CardDoctor> createState() => _CardDoctorState();
}

class _CardDoctorState extends State<CardDoctor> {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Card(
        elevation: 5,
        color: blueVeryLightColor,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.doctor),
                radius: 48, // Image radius
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.name,
                style: textTItle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.specialist,
                style: textDesc,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
