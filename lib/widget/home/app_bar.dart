import 'package:alibababelem/util/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
       height: 80,
       child: AppBar(
         automaticallyImplyLeading:false ,
         centerTitle: true,
         title: SimpleShadow(
           child: Image.asset(
             'assets/logo.png',
             height: 50,
             fit: BoxFit.cover,
           ),
           opacity: 0.5,
           offset: const Offset(2, 2),
           sigma: 2,
         ),
         backgroundColor: MyColors.vermelho,
         leading: Row(
           children: [
             const Padding(
               padding: EdgeInsets.only(left: 8),
               child: Icon(Icons.location_on),
             ),
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(bottom: 3),
                     child: Text(
                       "Oi, Karim",
                       style: TextStyle(
                           fontSize: 14, fontWeight: FontWeight.bold),
                     ),
                   ),
                   Text(
                     "Reduto",
                     style: TextStyle(fontSize: 12),
                   ),
                 ],
               ),
             ),
           ],
         ),
         leadingWidth: 100,
         actions: const [
           Padding(
             padding: EdgeInsets.all(8.0),
             child: Icon(
               Icons.account_circle_outlined,
               size: 30,
             ),
           )
         ],
       ),
     );
    }
  }

