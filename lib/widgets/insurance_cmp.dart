import 'package:flutter/material.dart';

class InsuranceCmp extends StatelessWidget {
    final String title;
    final String price;
    final String duration;
    final int value;
    final int groupValue;
    final ValueChanged<int?> onChanged;

    const InsuranceCmp({
      super.key,
      required this.title,
      required this.price,
      required this.duration,
      required this.value,
      required this.groupValue,
      required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 103.88,
        width: 368,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                  ),
                  ),
                  Row(
                    children: [
                      Text(
                        '$price',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                   
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$duration',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ],
                    ),
                  ),
               ],
              ),
                ],
              ),
            ),
            Radio<int>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              )
          ],
        ),
      ),
    );
    
  }
}