import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/model/data_docter.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_pemula_project/ui/detail_page.dart';

class CardDoctor extends StatefulWidget {
  int index;


  CardDoctor(
      {Key? key, required this.index}) : super(key: key);

  @override
  State<CardDoctor> createState() => _CardDoctorState();
}

class _CardDoctorState extends State<CardDoctor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailPage(index: widget.index);
        }));
      },
      child: Wrap(children: [
        Card(
          elevation: 5,
          color: blueVeryLightColor,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imageDoctor[widget.index]),
                  radius: 48, // Image radius
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  nameDoctor[widget.index],
                  style: textTItle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  specialistDoctor[widget.index],
                  style: textDesc,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
