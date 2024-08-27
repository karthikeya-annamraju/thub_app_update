// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'dart:io';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  // MyVariable Names

  String totalPayment = "28000"; //Gives the Due amount of the student
  dynamic courseData = ["Java", "RedHat", "FSD with React Native", "Java"];
  dynamic courseInfo = ["Pending", "Paid", "Overdue"];
  bool isPaid = false;
  double turns = 0;
  int isOpen = -1;
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("Payments", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Total Payment Due Container (Due Amount is shown to the user)
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              height: devHeight*(0.6/5),
              decoration: BoxDecoration(
                color:  Color(0xFFff7575),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Stack(
                children: [
                  Transform.rotate(
                    alignment: Alignment(-0.5,0.7),
                    angle: -30 * pi/180,
                    child: Icon(Icons.currency_rupee_outlined, size: 130, color: Color(0xFFed6d6e),),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(int.parse(totalPayment) >= 1? "Total Payment Due": "No Due", style: GoogleFonts.poppins(fontSize: 19),),
                        Text("₹ $totalPayment", style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),),
                        //Theme.of(context).textTheme.headlineLarge
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Heading titled as Course wise
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Coursewise", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
              ),
            ),

            // Different courses opted by the student (Ex: DriveReady, Java, etc..)
            Expanded(child: ListView.builder(itemCount: courseData.length , itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(top: 12, left: 3, right: 3),
                child: courseDueDetails(index),
              );
            })),

          ],
        ),
      ),
    );
  }

  // Container that contains the details of the course fee due details
  //
  IntrinsicHeight courseDueDetails(int ind){
    return IntrinsicHeight(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 1.5,
              spreadRadius: 1,
              offset: Offset(2, 2.3),
            )
          ],
        ),

        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    isOpen != ind? isOpen = ind: isOpen = -1;
                    isOpen == ind? turns = 2/4 : turns = 0;
                    tap = !tap;
                  });
                },
                child: technologyName(ind),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: (ind != isOpen)? List.generate(1, (i)=> feeDetails(i, isOpen, ind)) :List.generate(3, (index)=>Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: feeDetails(index, isOpen, ind),
                )),
              ),

            ],
          )
        ),
      ),
    );
  }

  // Course Details (Name of Course & Amount in rupees)
  Row technologyName(int ind){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(courseData[ind], style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w600, color: Color(0xFF008836)),),
        AnimatedRotation(turns: (isOpen == ind)? 2/4 : 0, duration: Duration(milliseconds: 300),
          child: Transform.rotate(angle: 90*pi/180, child: Icon(Icons.arrow_forward_ios_rounded, color: (isOpen == ind)? Colors.green: Colors.black,),),
        )
      ],
    );
  }

  // Gives the term Due date and payment status of the student..
  Row feeDetails(int ind, int tapped, int i){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Term-03", style: GoogleFonts.poppins(color: Colors.grey.shade600, fontSize: 12, fontWeight: FontWeight.w600),),
        Text("Due date: 16/08/24", style: GoogleFonts.poppins(color: Colors.grey.shade600, fontSize: 12, fontWeight: FontWeight.w600),),
        (tapped != i)? Container(
          height: MediaQuery.of(context).size.height*(0.14/5),
          width: MediaQuery.of(context).size.width*(0.9/5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.lightGreenAccent,
          ),
          child: Center(
            child: Text(courseInfo[ind]),
          ),
        ): 
            Text("₹80000", style: TextStyle(color: Color(0xFF008836), fontWeight: FontWeight.bold, fontSize: 13),)
      ],
    );
  }
}


