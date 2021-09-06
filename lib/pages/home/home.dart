import 'package:fensterlieferant/constants/style.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:fensterlieferant/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(// image below the top bar
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/bg.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(// image below the top bar
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.40,
              left: MediaQuery.of(context).size.width / 15,
              right: MediaQuery.of(context).size.width / 2,
            ),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Moderne Fenster von ",style: GoogleFonts.roboto(color: light)),
                  TextSpan(text: "Drutex", style: GoogleFonts.roboto(color: windowLight)),
                  TextSpan(text: " online konfigurieren und ",style: GoogleFonts.roboto(color: light)),
                  TextSpan(text: "liefern", style: GoogleFonts.roboto(color: windowLight)),
                  TextSpan(text: "  lassen.",style: GoogleFonts.roboto(color: light)),
                ], style: GoogleFonts.roboto(
                    fontSize: ResponsiveWidget.isMediumScreen(context) ?
                    38 : 45,
                    fontWeight: FontWeight.normal
                ))),
          ),
          Padding(
            padding:EdgeInsets.only(top:MediaQuery.of(context).size.height ),
            child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(child: CustomText(text:'Wählen Sie Ihr Profil',color: windowDark,size: 30,),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.2 ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/images/w1.jpeg',height: MediaQuery.of(context).size.height*.5,),
                                      CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                      CustomText(text: 'hhhh',size: 10)
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.2 ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/images/w1.jpeg',height: MediaQuery.of(context).size.height*.5,),
                                      CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                      CustomText(text: 'hhhh',size: 10)
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.2 ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/images/w1.jpeg',height: MediaQuery.of(context).size.height*.5,),
                                      CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                      CustomText(text: 'hhhh',size: 10)
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.2 ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/images/w1.jpeg',height: MediaQuery.of(context).size.height*.5,),
                                      CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                      CustomText(text: 'hhhh',size: 10)
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.25 ,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Icon(Icons.payment,size: MediaQuery.of(context).size.height*.2,color: windowLight),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                          CustomText(text: 'hhhh',size: 10)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.25 ,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Icon(Icons.check,size: MediaQuery.of(context).size.height*.2,color: windowLight),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                          CustomText(text: 'hhhh',size: 10)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: windowDark.withOpacity(0.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.white,
                                        offset: new Offset(5.0, 5.0),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(2),
                                  padding: EdgeInsets.all(3),
                                  width:MediaQuery.of(context).size.width*.25 ,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Icon(Icons.description,size: MediaQuery.of(context).size.height*.2,color: windowLight,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomText(text: 'hhhh',size: 22,color: windowLight,),
                                          CustomText(text: 'hhhh',size: 10)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            width: MediaQuery.of(context).size.width*.25,
                            child: TextButton(onPressed: (){}, child: CustomText(text:'Button',size: 16,color: light,),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(windowLight)),),
                          ),
                        ],
                      ) ,
                      ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Center(child: CustomText(text:'Fenster online kaufen - jetzt Preise berechnen und bestellen!',color: windowDark,size: 30,),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('step one'),
                                  Text('Description'),
                                ],
                              ),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              Column(
                                children: [
                                  Text('step one'),
                                  Text('Description'),
                                ],
                              ),
                              SizedBox(),
                              SizedBox(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.one_k_outlined,size: MediaQuery.of(context).size.width*.05,color: windowLight),
                              Container(width: MediaQuery.of(context).size.width*.2,color: windowDark,height: 2,),
                              Icon(Icons.two_k_outlined,size: MediaQuery.of(context).size.width*.05,color: windowLight),
                              Container(width: MediaQuery.of(context).size.width*.2,color: windowDark,height: 2,),
                              Icon(Icons.three_k_outlined,size: MediaQuery.of(context).size.width*.05,color: windowLight),
                              Container(width: MediaQuery.of(context).size.width*.2,color: windowDark,height: 2,),
                              Icon(Icons.four_k_outlined,size: MediaQuery.of(context).size.width*.05,color: windowLight),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(),
                              Column(
                                children: [
                                  Text('step one'),
                                  Text('Description'),
                                ],
                              ),
                              SizedBox(),
                              Column(
                                children: [
                                  Text('step one'),
                                  Text('Description'),
                                ],
                              ),
                            ],
                          ),
                        ],

                      )
                      ),
                  Container(
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width,
                      color: windowDark,
                      child: Text('footer'),
                      )
                ],
                ),
          )
        ],
      ),
    );
  }
}
