// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDup extends StatefulWidget {
  const PaymentDup({super.key});

  @override
  State<PaymentDup> createState() => _PaymentDupState();
}

class _PaymentDupState extends State<PaymentDup> {
  int balance = 24000;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    // 411.4285
    final deviceHeight = MediaQuery.of(context).size.height;
    // 890.2857
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back,size: 25,),
        centerTitle: true,
        title: Text('Payments', style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth/25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: deviceHeight/89,),
            Container(
              height: deviceHeight/7.5,
              width: deviceWidth/0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.red[300],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-deviceWidth/373, 0),
                    child: Transform.rotate(angle: -30*pi/180,
                      child: Icon(Icons.currency_rupee, size: 105,
                      color: Colors.black12,),),
                  ),
                  Positioned(
                    left: deviceWidth/3.96,
                      top: deviceHeight/45.5,
                      child:Text('Total Payment Due',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                        ),)),

                  Positioned(
                    left: deviceWidth/3.6,
                      top: deviceHeight/17.18,
                      child: Row(
                        children: [
                          Icon(Icons.currency_rupee_outlined, size: 35,),
                          Text('$balance',
                            style: GoogleFonts.poppins(
                              fontSize: 39,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      )),],
              ),),
            SizedBox(height: deviceHeight/60,),
            Padding(
              padding: const EdgeInsets.only(right: 255),
              child: Text('Coursewise', style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: deviceHeight/60,),
            // Expanded(child: ListView(children: [
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            //   myCont(context),
            //   SizedBox(height: deviceHeight/89,),
            // ],))

            // Coursewise container starts.
        Container(
          height: deviceHeight/7.5,
          width: deviceWidth/0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 2),
            )],
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Java', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green,
                        ),),
                        SizedBox(width: deviceWidth/1.85,),
                        Icon(Icons.currency_rupee, color: Colors.green, size: 20,),
                        Text('$balance', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green
                        ),)
                      ],
                    ),
                ),
                SizedBox(height: deviceHeight/89,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('Term-03', style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontWeight: FontWeight.normal
                        ),),
                        SizedBox(width: deviceWidth/21,),
                        Text('Due date:16/08/2024', style: GoogleFonts.poppins(
                            color: Colors.black54 ,
                            fontWeight: FontWeight.normal
                        ),),
                        SizedBox(width: deviceWidth/11,),
                        statusPending(),
                      ],
                    ))
              ],
            ),
          ),
        ), SizedBox(height: deviceHeight/89,),
            // Coursewise container ends.
          ],
        ),
      ),
    );
  }
   Widget statusPending(){
     return Container(
       height: 30,
       width: 80,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12),
         color: Colors.amber[300],
       ),
       child: Center(
         child: Text('Pending'),
       ),
     );
   }

  Widget statusPaid(){
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green[500],
      ),
      child: Center(
        child: Text('Paid'),
      ),
    );
  }

  Widget statusOverdue(){
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red[300],
      ),
      child: Center(
        child: Text('Overdue'),
      ),
    );
  }



  Widget myCont(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    // 411.4285
    final deviceHeight = MediaQuery.of(context).size.height;
    // 890.2857
    return Container(
      height: deviceHeight/7.5,
      width: deviceWidth/0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 2),
          )],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text('Java', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green,
                  ),),
                  SizedBox(width: deviceWidth/1.85,),
                  Icon(Icons.currency_rupee, color: Colors.green, size: 20,),
                  Text('$balance', style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green
                  ),)
                ],
              ),
            ),
            SizedBox(height: deviceHeight/89,),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text('Term-03', style: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal
                    ),),
                    SizedBox(width: deviceWidth/21,),
                    Text('Due date:16/08/2024', style: GoogleFonts.poppins(
                        color: Colors.black54 ,
                        fontWeight: FontWeight.normal
                    ),),
                    SizedBox(width: deviceWidth/11,),
                    statusPending(),
                  ],
                ))
          ],
        ),
      ),
    );
  }


}
