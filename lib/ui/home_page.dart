import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/model/data_docter.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_pemula_project/widget/card_myappoinment.dart';

import '../widget/card_doctor.dart';

class HomePage extends StatefulWidget {
  final String name;

  const HomePage({Key? key, required this.name}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: textDesc2,
                        ),
                        Text(
                          widget.name,
                          style: textTitleBlue,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications),
                          color: bluePrimaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpeg'),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: bluePrimaryColor,
                    ),
                    labelText: 'Search a doctor of health issue',
                    labelStyle: textDesc3,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: blueVeryLightColor)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Doctor',
                      style: textTItleDark,
                    ),
                    Text(
                      'See All',
                      style: textDesc3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  //
                  //
                  // Ada cara lain biar tinggi Listview bisa mengikuti tinggi item kak ?
                  height: MediaQuery.of(context).size.height / 3.5,
                  //
                  //
                  //
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CardDoctor(index: index,);
                    },
                    itemCount: imageDoctor.length,
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'My Appoinment',
                      style: textTItleDark,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                const CardMyAppointment()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
