import 'package:activili_mobile/RoundedPictureBox';
import 'package:flutter/material.dart';

class offersOredoo extends StatefulWidget {
  const offersOredoo({super.key});

  @override
  State<offersOredoo> createState() => _offersOredooState();
}

class _offersOredooState extends State<offersOredoo> {
  

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

            const Expanded(
              child: 
                Center(
                  child: 
                
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 
                      SizedBox(height: 60),

                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
              borderRadius: 10,
                    height: 124,
                    width: 124,
                      )

                      , 
                   SizedBox(width: 10),

                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
                   borderRadius: 10,
                    height: 124,
                    width: 124,
                      )
                    ]
                  )

                  ,
                   SizedBox(height: 15),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
                borderRadius: 10,
                    height: 124,
                    width: 124,
                      )

                      , 
                   SizedBox(width: 10),

                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
               borderRadius: 10,
                    height: 124,
                    width: 124,
                      )
                    ]
                  )
                  ,
                SizedBox(height: 15),

                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
                 borderRadius: 10,
                    height: 124,
                    width: 124,
                      )

                      , 
                   SizedBox(width: 10),

                   RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
                 borderRadius: 10,
                    height: 124,
                    width: 124,
                      )
                    ]
                  )

                    ,
                 SizedBox(height: 15),

                    RoundedPictureBox(
                    imageUrl: 'android/assets/images/download.jfif',
                  borderRadius: 10,
                    height: 124,
                    width: 124,
                      ),
                   Spacer()],
                  
                  ),
                )
 ),    ],
                
                ) ,)
                
                );

  }
}