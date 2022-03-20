import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_pemula_project/ui/home_page.dart';
import 'package:flutter_pemula_project/utils/validation_name.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatefulWidget {

  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _controller = TextEditingController();

  var _text = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              const SizedBox(
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
                        controller: _controller,
                        onChanged: (text) => setState(() {
                          _text;
                        }),
                        decoration: InputDecoration(
                          errorText: getErrorName(_controller.text),
                          labelText: 'Enter your name',
                          labelStyle: textDesc3,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 2,
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
                            onPressed: () {
                              if(getErrorName(_controller.text) == null){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return HomePage(name: _controller.text);
                                }));
                              }
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
