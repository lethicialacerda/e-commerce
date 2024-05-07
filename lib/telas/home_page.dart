import 'package:e_commerce/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_outlined),
        actions: const [
          Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(Icons.shopping_bag),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(Icons.favorite),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Icon(Icons.account_circle),
        )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    width: 500,
                    height: 240,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('/titulo_semfundo.png'),
                      )
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
                Expanded(
                  flex: 2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text(
                        'Perfumes \n Citricos',
                        textAlign: TextAlign.left, 
                        style: GoogleFonts.quicksand(
                          color: Colors.black54, 
                          fontWeight: FontWeight.w300, 
                          fontSize: 25 
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 250, 
                          color: Colors.black,
                                          ),
                      ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          width: 250,  
                          color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text(
                    'Perfumes \n Doces', 
                    textAlign: TextAlign.left, 
                    style: GoogleFonts.quicksand(
                      color: Colors.black54, 
                      fontWeight: FontWeight.w300, 
                      fontSize: 25 
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
             Expanded(
                flex: 2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text(
                    'Perfumes \n Florais', 
                    textAlign: TextAlign.left, 
                    style: GoogleFonts.quicksand(
                      color: Colors.black54, 
                      fontWeight: FontWeight.w300, 
                      fontSize: 25 
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image.asset('perfume1.png'),
                          Column(
                            children: [
                              Text(
                                'Perfume \n campos',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.quicksand(
                                  color: Colors.black54, 
                                  fontWeight: FontWeight.w400, 
                                  fontSize: 15 
                                ),
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                ElevatedButton(
                                style: buttonProduct,
                                onPressed: () {}, 
                                child: Icon(Icons.favorite_outline_rounded, color: Colors.black),
                                ),
                              ElevatedButton(
                                style: buttonProduct,
                                onPressed: () {},
                                child: Icon(Icons.add_shopping_cart, color: Colors.black,), 
                              ),
                                ],
                              ),
                              
                            ],
                          )  
                        ], 
                      ), 
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],     
        ),
      ), 
    );
  }
}