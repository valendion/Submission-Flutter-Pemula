import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: blueVeryDarkColor,
                ),
              ),
              Expanded(
                  child: Container(
                child: Column(),
                color: whitePrimaryColor,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // boxShadow: [BoxShadow(
                    //     color: Colors.black54,
                    //     blurRadius: 15.0,
                    //     offset: Offset(0.0, 0.75)
                    // )]
                  ),
                  child: SvgPicture.asset(
                    'assets/images/illustrator_doctor.svg',
                    width: 400,
                  )),
              Text(
                'Enjoy your health anywhere',
                style: textTItleDark,
              ),
              const SizedBox(
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
              // Container(
              //   margin: EdgeInsets.all(16),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         hintText: 'Please Input yout name ...',
              //         labelText: 'Your name'),
              //     controller: _controller,
              //   ),
              // ),
              Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                margin: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    labelStyle: textDesc3,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 4,
                ),
                decoration: BoxDecoration(
                    color: bluePrimaryColor,
                    borderRadius: BorderRadius.all(const Radius.circular(40))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Get Started',
                      style: textButton,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_outlined),
                      color: whitePrimaryColor,
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
