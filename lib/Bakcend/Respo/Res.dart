import 'dart:convert';
import 'package:demo1/Bakcend/models/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

/* -------------------------------------------------------------------------- */
/*           
              !     SHOW ALL PRODUCT LIST WITH TWO PATTERN :-  
              ! 1. MAKEING ANOTHER ABSTRACT CLASS :- LIKE THIS PAGE 
              ! 2. WITHOUT ANY ABSTRACT CLASS :- REGISTER, LOGIN PAGE   
                                                                                */
/* -------------------------------------------------------------------------- */

class ProductDataRespo with ChangeNotifier {
  String baseUrl =
      'https://omst5afyma.execute-api.ap-south-1.amazonaws.com/production/app/home';
  Future<List<dynamic>> getProduct() async {
    try {
      var res = await http.get(Uri.parse(baseUrl));

      if (res.statusCode == 200) {
        var dat = json.decode(res.body);

        List<dynamic> sliderData = dat['slider'];

        return sliderData;
      } else {
        return Future.error("Server Error !");
      }
    } catch (e) {
      print('Error:- $e');
      return Future.error("Error Fetching Data !");
    }
  }

  // ! PRODUCT Deails
  Future<List<dynamic>> prodDeal() async {
    try {
      var res = await http.get(Uri.parse(baseUrl));

      if (res.statusCode == 200) {
        var datar = jsonDecode(res.body);
        var dat = json.decode(res.body);
        print(dat['status']);

        List<dynamic> prodData = dat['category'];

        return prodData;
      } else {
        return Future.error("Server Error !");
      }
    } catch (e) {
      print('Error:- $e');
      return Future.error("Error Fetching Data !");
    }
  }
}
