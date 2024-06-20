import 'package:activili_mobile/Options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 105, 98, 199),
    ));
    
  return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Activili',
      theme: ThemeData(
     
        fontFamily: 'calibri',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(125, 157, 138, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Activili login screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => LoginScreen();
}

class LoginScreen extends State<MyHomePage> {

bool isShown = true; 

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(125, 157, 138, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 60), 
              const Text(
                'Activili',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),
              ),
              const Spacer(), 
             TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.phone_android , color: Colors.grey),
                  hintText: '...رقم الهاتف',
                  border: OutlineInputBorder(borderSide:const BorderSide(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.white,
                  filled: true
                )
              ) 
              ,
              const SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.end,
                obscureText: isShown,
                decoration: InputDecoration(
                  hintText: '...كلمة السر',
                    border: OutlineInputBorder(borderSide:const BorderSide(color: Colors.grey , width: 0.5),
                    borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIconColor: Colors.black
                , prefixIcon: Padding(padding:const EdgeInsets.all(0),
                  child:IconButton(icon:(isShown)? 
                 SvgPicture.asset('android/assets/svg_images/show.svg'
                        ,colorFilter:const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                        height: 20,
                        width:20
                        ):
                        SvgPicture.asset('android/assets/svg_images/hide.svg'
                        ,colorFilter:const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                        height: 20,
                        width:20
                        )
                ,onPressed: (){
                  
                   setState(() {
                    isShown = !isShown;
                });
                },
                      )    
                    ) 
                       ,
                                              
                    ), onTap: () {},
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                
                
                onPressed: () {

Navigator.push(context, MaterialPageRoute(builder: (context)=>const Options()));
                },
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green.shade300) ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                  'Login',
                  style: TextStyle(fontStyle: FontStyle.normal, color: Colors.white,fontSize: 15) 
                  
                )),
                
                
              ),
              const Spacer(),
              
          ClipRRect(borderRadius:
          BorderRadius.circular(8),
          child: 
          Container(color: Colors.white,
          child: 

       Padding(padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
          child:
           Column(
                children: [
                    const Text(
                'الاتصال بنا على',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold, 
                  color: Colors.black
                ),
              ),
                        SizedBox(height: 10)
              ,
            InkWell(
                onTap: () {
                      MakeCall("tel:0542595254");
                },
                child: const Text(
                  '0542595254',
                    style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ), 
              const SizedBox(height: 10),
               InkWell(
                 onTap: () {
                      MakeCall("tel:0770753563");
                },
                child: 
              const Text(
                '0770753563',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal, 
                  color: Colors.black
                ),
              )
              ) 
                ],
              ))
            
           ,)
 
          ),
          const SizedBox(height: 20)
          
          ]),
        ),
      ),
      
    );

    
  }

 void MakeCall(String uri){
 UrlLauncher.launchUrl(Uri.parse(uri));
 }

}
