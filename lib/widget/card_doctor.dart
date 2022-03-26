import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/model/data_docter.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_pemula_project/ui/detail_page.dart';


class CardDoctor extends StatelessWidget {
  final int index;

  const CardDoctor({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage(index: index);
        }));
      },
      child: Wrap(children: [
        Card(
          elevation: 5,
          color: blueVeryLightColor,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imageDoctor[index]),
                  radius: 48, // Image radius
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  nameDoctor[index],
                  style: textTItle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  specialistDoctor[index],
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
