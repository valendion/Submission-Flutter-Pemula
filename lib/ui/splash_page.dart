import 'package:flutter/material.dart';
import 'package:flutter_pemula_project/style/theme.dart';
import 'package:flutter_pemula_project/ui/first_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){

      Route route = MaterialPageRoute(builder: (context) => FirstPage());
      Navigator.pushAndRemoveUntil(context, route, (route) => false);

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueVeryDarkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Lottie.asset(
                'assets/images/animation.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),

            const SizedBox(height: 16,),

            Text('MedicalCheck App', textAlign: TextAlign.center,style: textTitleWhite,)
          ],
        ),
      ),
    );
  }
}
