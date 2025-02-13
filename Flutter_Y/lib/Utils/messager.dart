  import 'package:flutter/material.dart';
  
  
  
  
  void messager(BuildContext context, String message,String url ,{bool isError = false}){
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Column(
      mainAxisSize: MainAxisSize.min, // Keeps the content compact
      children: [
        Image.asset(
          url, // Replace with your image path
          height: 70, // Adjust size as needed
        ),
        SizedBox(height: 10),
        Row(
          children: [
            // Icon(Icons.check_circle, color: Colors.white, size: 24), // Success Icon
            SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    ),
    backgroundColor: isError ? Colors.red : Colors.green, // Success background
    behavior: SnackBarBehavior.floating, // Makes it float
    margin: EdgeInsets.only(left: 16, right: 16, bottom: 0), // Zero margin at bottom
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), // Rounded corners
    duration: Duration(seconds: 3), // Duration before auto-dismiss
    elevation: 10, // Adds a shadow effect
  ),
);

}