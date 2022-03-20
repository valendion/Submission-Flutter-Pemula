
import 'package:flutter/cupertino.dart';

String? getErrorName(String name){
  if(name.isEmpty){
    return 'Can\'t be empsty';
  }

  if(name.length < 4){
    return 'Too Short';
  }

  return null;

}
