import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            body: Image.asset(
              'images/TheNUN.png',
              width: double.infinity,
              height:double.infinity,
              fit: BoxFit.cover,).blurred(   //Image.asset
                blur: 10,
                overlay: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                
              
                SizedBox(
                    width: 250, height: 250, child: Image.asset('images/TheNUN.png')),
                Text("The Nun"),
                Text("2018"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.getStars()),
                SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: CupertinoButton(
                            color: Colors.red,
                            padding: EdgeInsets.zero,
                            child: Icon(Icons.remove),
                            onPressed: () {
                              controller.csokkentsdACsillagDbt();
                            }),
                      ),
                      SizedBox(
                        width: 120,
                        child: CupertinoButton(
                            color: Colors.green,
                            padding: EdgeInsets.zero,
                            child: Icon(Icons.add),
                            onPressed: () {
                              controller.noveldACsillagDbt();
                            }),
                      )
                    ],
                  ),
                ),
                  ]
                )
              )
          );
    
                
        });
  }
}