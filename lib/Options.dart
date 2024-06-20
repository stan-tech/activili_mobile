import 'package:activili_mobile/SimCards.dart';
import 'package:flutter/material.dart';
import 'IconTextButton.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold
              (

                backgroundColor: const Color.fromARGB(125, 157, 138, 255),
                body:
        Padding(padding: const EdgeInsets.all(2.0),
                child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

        const SizedBox(height: 50),
        Row(children: [
        const SizedBox(width: 10,height: 10),
           IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 34,),
              
              onPressed: () {
                Navigator.pop(context);
              },
            )
        ],)
           ,

            Expanded(
              child: 
                Center(
                  child: 
                
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 
                     const SizedBox(height: 100),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                      IconTextButton(
                        iconSize: 30,
                       buttonPadding: 15,
                       iconPath:'android/assets/svg_images/accept.svg',                        
                       text:
                      'تفعيل الشرائح',
                       iconColor: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                       onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Simcards()));

                         },

                      )

                      , 
                  const SizedBox(width: 10),

                   IconTextButton(
                    iconSize: 30,
                     buttonPadding: 15,
                     iconPath:'android/assets/svg_images/sim.svg',                        
                     text:
                      'حالة الشرائح السابقة',
                      iconColor: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      onPressed: () {  },

                      )
                    ]
                  )

                  ,
                  const SizedBox(height: 15),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconTextButton(
                    buttonPadding: 25,
                    iconPath:'android/assets/svg_images/setting.svg',                        
                    text:
                      'الاعدادات',
                    iconColor: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    onPressed: () {  },

                      )

                      , 
                   const SizedBox(width: 10),
                    IconTextButton(
                     buttonPadding: 25,

                    iconPath:'android/assets/svg_images/info.svg',                        
                    text:
                      'معلومات هامة',
                    iconColor: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    onPressed: () {  },

                      )
                    ],
                  ),

                  Padding(padding: const EdgeInsets.all(10),
                  child:
                   IconTextButton(
                    textFontSize: 20,
                    iconSize: 30,
                    buttonPadding: 45,
                    iconPath:'android/assets/svg_images/megaphone.svg',                        
                    text:
                      'اعلانات',
                    iconColor: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    onPressed: () {  },

                      ) 
                    )
                    ,
                  const Spacer()],
                  
                  ),
                )
 )    ],
                
                ) ,)
                
                );

  }
}