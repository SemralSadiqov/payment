import 'package:flutter/material.dart';
import 'package:insurence_dart/insurencesc1.dart';
import '../widgets/insurance_cmp.dart';

class InsurenceScreen2 extends StatefulWidget {
  const InsurenceScreen2({super.key});

  @override
  State<InsurenceScreen2> createState() => _InsuranceScreen2State();
}

class _InsuranceScreen2State extends State<InsurenceScreen2> {

int sellectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffE8E9EB),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        title: Text('Insurance',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffE8E9EB),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(onPressed: (){},
            icon: Badge.count(
            count: 3,
            child: Icon(Icons.notifications),
              ),
             ),
          ),
        )
      ],
     ),

      body:Stack(

        children: [ Column(
        
          children: [
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Text('Select a Insurance Plan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
          ),
          SizedBox(height: 20),
          InsuranceCmp(
            title : "Monthly Plan",
            price: "\$150.00",
            duration: "USD/month",
        
            value: 0,
            groupValue: sellectedIndex,
        
            onChanged:(value) {
              setState(() {
                sellectedIndex = value!;
              });
            },
          ),
          
          InsuranceCmp(
             title : "OneTime Plan",
            price: "\$250.00",
            duration: "USD/year",
        
            value: 1,
            groupValue: sellectedIndex,
        
            onChanged: (value) {
              setState(() {
                sellectedIndex = value!;
              });
            },
          ),
          
          InsuranceCmp(
             title : "Yearly Plan",
            price: "\$350.00",
            duration: "USD/year",
        
            value: 2,
            groupValue: sellectedIndex,
        
            onChanged:(value) {
              setState(() {
                sellectedIndex = value!;
              });
            },
          ),
          ],
        
        ),

        ]
      )
    );

  }

}