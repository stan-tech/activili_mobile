import 'package:activili_mobile/Offers_oredoo.dart';
import 'package:flutter/material.dart';

class Simcards extends StatelessWidget {
  const Simcards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(125, 157, 138, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40), 
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 34,),
              
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const offersOredoo())
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.red),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Oredoo',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Djezzy',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const Simcards())
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Mobilis',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green.shade300),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
