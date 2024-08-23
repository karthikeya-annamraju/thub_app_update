// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String totalPayment = "24000";
  dynamic courseData = ["Java", "RedHat", "FSD with React Native"];
  bool isPaid = false;
  double turns = 1;
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
            // Total Payment Due
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              height: devHeight*(0.6/5),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Stack(
                children: [
                  Transform.rotate(
                    alignment: Alignment(-0.5,0.7),
                    angle: -30 * pi/180,
                    child: Icon(Icons.currency_rupee_outlined, size: 130, color: Colors.black.withOpacity(0.15),),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(int.parse(totalPayment) >= 1? "Total Payment Due": "No Due", style: GoogleFonts.poppins(fontSize: 20),),
                        Text("₹ $totalPayment", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Course wise
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Coursewise", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18),),
              ),
            ),

            // Courses
            Expanded(child: Container(
              child: ListView.builder(itemCount: courseData.length , itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CourseDueDetails(index),
                );
              }),
            ))

          ],
        ),
      ),
    );
  }


  // Container that contains the details of the course fee due details
  Container CourseDueDetails(int ind){
    return Container(
      height: 100,
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
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            technologyName(ind),
            feeDetails(ind),
          ],
        )
      ),
    );
  }

  // Course Details (Name of Course & Amount in rupees)
  Row technologyName(int ind){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(courseData[ind], style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),),
        // Text("₹ 20000 ", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),),

      ],
    );
  }

  Row feeDetails(int ind){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text("Term-03", style: GoogleFonts.poppins(color: Colors.grey.shade600, fontSize: 15, fontWeight: FontWeight.w600),),
        ),
        Expanded(
          flex: 2,
          child: Text("Due date: 16/08/24", style: GoogleFonts.poppins(color: Colors.grey.shade600, fontSize: 15, fontWeight: FontWeight.w600),),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Expanded(
            flex: 2,
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.lightGreenAccent,
              ),
            )
          ),
        ),
      ],
    );
  }

}


