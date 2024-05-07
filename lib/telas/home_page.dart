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
                    height: 260,
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
                        'Perfumes \nCitricos',
                        textAlign: TextAlign.left, 
                        style: GoogleFonts.raleway(
                          color: Colors.black54, 
                          fontWeight: FontWeight.w300, 
                          fontSize: 28 
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
                    'Perfumes \nDoces', 
                    textAlign: TextAlign.left, 
                    style: GoogleFonts.raleway(
                      color: Colors.black54, 
                      fontWeight: FontWeight.w300, 
                      fontSize: 28 
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
                    'Perfumes \nFlorais', 
                    textAlign: TextAlign.left, 
                    style: GoogleFonts.raleway(
                      color: Colors.black54, 
                      fontWeight: FontWeight.w300, 
                      fontSize: 28 
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.grey
                      ),
                      
                      child: Row(
                        children: [
                          Image.asset('/perfumes_semfundo/perfume1_semfundo.png'),
                          Column(   
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Perfume campos',
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.raleway(
                                    color: Colors.black54, 
                                    fontWeight: FontWeight.w400, 
                                    fontSize: 20 
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 25),
                              Container(
                                width: 160,
                                height: 94,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0, bottom: 15.0),
                                      child: ElevatedButton(
                                        style: buttonFavorite,
                                        onPressed: () {}, 
                                        child: Icon(Icons.favorite_sharp, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 15.0),
                                      child: ElevatedButton(
                                        style: buttonCard,
                                        onPressed: () {},
                                        child: Text(
                                          'Comprar',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.ptSans(
                                            color: Colors.black54,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ), 
                                      ),
                                    ),
                                  ],
                                ),
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