import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/model/data_docter.dart';
import 'package:flutter_pemula_project/style/theme.dart';

class DetailPage extends StatefulWidget {
  final int index;

  const DetailPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueDarkColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageDoctor[widget.index]),
              radius: 48, // Image radius
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              nameDoctor[widget.index],
              style: textTitleWhite,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              specialistDoctor[widget.index],
              style: textButton,
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              decoration: BoxDecoration(
                color: whitePrimaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Biography',
                    style: textTItleDark,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    biography[widget.index],
                    style: textDesc2,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Location',
                    style: textTItleDark,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: bluePrimaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            location[widget.index],
                            style: textTItle,
                          ),
                          Text(
                            time[widget.index],
                            style: textDesc2,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
