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
  bool isOpen = false;
  bool _isExpanded = false;
  int bal = 0;
  int termWise = 8000;


  bool changeBool(){
    _isExpanded = !_isExpanded;
    print(_isExpanded);
    return _isExpanded;
  }

  var courses = [
    'FSD with React Native',
    'Google Flutter',
    'VLSI',
    'Data Analytics',
    'AWS Development',
    'Generative AI',
    'AWS DevOps',
    'Cloud 3',
    'Oracle Apex',
    'PEGA',
    'Salesforce'
    'UI/UX'
  ];

  // final List<Widget Function()>paymentStatus = [()=>statusPaid()];

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    // 411.4285
    final deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    // 890.2857
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, size: 25,),
        centerTitle: true,
        title: Text('Payments', style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth / 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: deviceHeight / 89,),
            Container(
              height: deviceHeight / 7.5,
              width: deviceWidth / 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: balance > 0? Colors.red[300] : Colors.lightGreen,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-deviceWidth / 380, 0),
                    child: Transform.rotate(angle: -30 * pi / 180,
                      child: Icon(Icons.currency_rupee, size: 105,
                        color: Colors.black12,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:40),
                    child: Center(
                        // left: deviceWidth / 3.96,
                        // top: deviceHeight / 45.5,
                        child: balance > 0? Text('Total Payment Due',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                          ),): Text('No Due',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                          ),)),
                  ),

                  Positioned(
                      left: deviceWidth / 3.6,
                      top: deviceHeight / 17.18,
                      child: Row(
                        children: [
                          Icon(Icons.currency_rupee_outlined, size: 35,),
                          Text('$balance',
                            style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      )),
                ],
              ),),
            SizedBox(height: deviceHeight / 60,),
            Padding(
              padding: const EdgeInsets.only(right: 255),
              child: Text('Coursewise', style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: deviceHeight / 60,),

            // Expanded(child: ListView(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
            //       color: _isExpanded? Colors.green : Colors.white,
            //         boxShadow: [
            //               BoxShadow(
            //               color: Colors.grey,
            //               spreadRadius: 0.5,
            //               blurRadius: 0.5,
            //               offset: Offset(0, 2),
            //             )],),
            //       child: ExpansionTile(
            //         backgroundColor: Colors.green,
            //         leading: Text('Drive Ready', style: GoogleFonts.poppins(
            //           fontWeight: FontWeight.bold,
            //           color: Colors.black,
            //             fontSize: 14,
            //         ),),
            //         title: Text('Google Flutter', style: GoogleFonts.poppins(
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black,
            //               ),),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(22), // Removes the rounded corners
            //         ),
            //         tilePadding: EdgeInsets.symmetric(horizontal: 16.0),
            //         collapsedShape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(22),
            //         ),
            //         children: [
            //           Container(
            //             color: Colors.white,
            //             child: Column(
            //               children: [
            //                 ListTile(title: Text('Term-03   Due date:16/08/2024 ', style:
            //                   GoogleFonts.poppins(
            //                     color: Colors.black54,
            //                     fontSize: 13,
            //                   ),),
            //                   trailing: Text('Rs $balance', style: GoogleFonts.poppins(
            //                     color: Colors.green,
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.bold,
            //                   ),),
            //                   subtitle: Text('Paid : Rs 0', style:
            //                   GoogleFonts.poppins(
            //                     color: Colors.green,
            //                     fontSize: 13,
            //                   )),
            //                 ),
            //                 ListTile(title: Text('Term-02   Due date:16/08/2024 ',style:
            //                 GoogleFonts.poppins(
            //                   color: Colors.black54,
            //                   fontSize: 13,
            //                 ),),
            //                   // trailing: Text('Rs $balance', style: GoogleFonts.poppins(
            //                   //   color: Colors.green,
            //                   //   fontSize: 12,
            //                   //   fontWeight: FontWeight.bold,
            //                   // ),),
            //                   trailing: statusOverdue(),
            //                   subtitle: Text('Paid : Rs 0', style:
            //                   GoogleFonts.poppins(
            //                     color: Colors.green,
            //                     fontSize: 13,
            //                   )),
            //                 ),
            //                 ListTile(title: Text('Term-01   Due date:16/08/2024 ', style:
            //                 GoogleFonts.poppins(
            //                   color: Colors.black54,
            //                   fontSize: 13,
            //                 ),),
            //                   // trailing: Text('Rs $balance', style: GoogleFonts.poppins(
            //                   //   color: Colors.green,
            //                   //   fontSize: 12,
            //                   //   fontWeight: FontWeight.bold,
            //                   // ),),
            //                   trailing: statusPaid(),
            //                   subtitle: Text('Paid : Rs $balance', style:
            //                   GoogleFonts.poppins(
            //                     color: Colors.green,
            //                     fontSize: 13,
            //                   )),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     // Courses Ends here
            //     SizedBox(height: 10,),
            //     techTile(),
            //     SizedBox(height: 10,),
            //     techTile(),
            //     Expanded(
            //       child: ListView.builder(
            //         itemCount: 3,
            //           itemBuilder: (context, index) {
            //         return techTile();
            //       }),
            //     )
            //   ],
            // ))
            Expanded(child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return techTile(index);
            }))
          ],
        ),
      ),
    );
  }

  Widget statusPending() {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber[300],
      ),
      child: Center(
        child: Text('Upcoming'),
      ),
    );
  }

  Widget statusPaid() {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green[500],
      ),
      child: Center(
        child: Text('Paid'),
      ),
    );
  }

  Widget statusOverdue() {
    return Container(
      height: 25,
      width: 60,
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
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    // 411.4285
    final deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    // 890.2857
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: deviceHeight / 7.5,
      width: deviceWidth / 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 2),
          )
        ],
        color: Colors.white,
      ),
      child: isOpen ? smallChild(context) : largeChild(context),
    );
  }

  Widget smallChild(BuildContext context) {
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    // 411.4285
    final deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    // 890.2857
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text('Drive Ready', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.green,
                ),),
                isOpen ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded, color: Colors.green,))
                    : GestureDetector(
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded, color: Colors.green,)),
                SizedBox(width: deviceWidth / 4.25,),
                Icon(Icons.currency_rupee, color: Colors.green, size: 20,),
                Text('$balance', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green
                ),)
              ],
            ),
          ),
          SizedBox(height: deviceHeight / 89,),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text('Term-03', style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 12
                  ),),
                  SizedBox(width: deviceWidth / 21,),
                  Text('Due date:16/08/2024', style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 12
                  ),),
                  SizedBox(width: deviceWidth / 11,),
                  statusPending(),
                ],
              ))
        ],
      ),
    );
  }

  Widget largeChild(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    // 411.4285
    final deviceHeight = MediaQuery.of(context).size.height;
    // 890.2857
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text('Drive Ready', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.green,
                ),),
                isOpen ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded, color: Colors.green,))
                    : GestureDetector(
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded, color: Colors.green,)),
                SizedBox(width: deviceWidth / 4.25,),
                Icon(Icons.currency_rupee, color: Colors.green, size: 20,),
                Text('$balance', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green
                ),)
              ],
            ),
          ),
          SizedBox(height: deviceHeight / 89,),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text('Term-03', style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 12
                  ),),
                  SizedBox(width: deviceWidth / 21,),
                  Text('Due date:16/08/2024', style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 12
                  ),),
                  SizedBox(width: deviceWidth / 11,),
                  statusPaid(),
                ],
              ))
        ],
      ),
    );
  }

  Widget techTile(int ind) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
          color: _isExpanded? Colors.green : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 2),
            )],),
        child: ExpansionTile(
          backgroundColor: Colors.green,
          leading: Text('Drive Ready', style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: _isExpanded? Colors.black :Colors.deepOrangeAccent,
            fontSize: 14,
          ),),
          title: Text(courses[ind], style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22), // Removes the rounded corners
          ),
          tilePadding: EdgeInsets.symmetric(horizontal: 16.0),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(title: Text('Term-03   Due date:16/08/2024 ', style:
                  GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 13,
                  ),),
                    trailing: Text('Rs $balance', style: GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text('Paid : Rs 0', style:
                    GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 13,
                    )),
                  ),
                  ListTile(title: Text('Term-02   Due date:16/08/2024 ',style:
                  GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 13,
                  ),),
                    // trailing: Text('Rs $balance', style: GoogleFonts.poppins(
                    //   color: Colors.green,
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.bold,
                    // ),),
                    trailing: statusPaid(),
                    subtitle: Text('Paid : Rs $termWise', style:
                    GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 13,
                    )),
                  ),
                  ListTile(title: Text('Term-01   Due date:16/08/2024 ', style:
                  GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 13,
                  ),),
                    // trailing: Text('Rs $balance', style: GoogleFonts.poppins(
                    //   color: Colors.green,
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.bold,
                    // ),),
                    trailing: statusOverdue(),
                    subtitle: Text('Paid : Rs $termWise', style:
                    GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 13,
                    )),
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