import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/style/theme.dart';

class CardMyAppointment extends StatelessWidget {
  const CardMyAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          color: blueVeryLightColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/dummy_doctor5.jpg'),
                      radius: 32, // Image radius
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Valendion',
                          style: textTitleBig,
                        ),
                        Text(
                          'Dentist',
                          style: textDesc,
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 8,),

                Card(
                  color: bluePrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.access_alarm, color: Colors.white,),
                            Text(
                              'Wednesday, 07:00 - 09:00 WIT',
                              style: textButton,),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined, color: Colors.white,),
                            Text(
                              'PUSKESMAS Lapadde Kota Parepare',
                              style: textButton,),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
