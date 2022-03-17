import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/illustrator_doctor.svg',
                          width: 400,
                        )),
                  ],
                ),
                color: blueVeryDarkColor,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      'Enjoy your health anywhere',
                      style: textTItleDark,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You can find out information about health\n and ask the experts directly',
                      style: textDesc2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter your name',
                          labelStyle: textDesc3,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                          color: bluePrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Get Started',
                            style: textButton,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IconButton(
                            onPressed: () {

                            },
                            icon: const Icon(Icons.arrow_forward_outlined),
                            color: whitePrimaryColor,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                color: whitePrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
