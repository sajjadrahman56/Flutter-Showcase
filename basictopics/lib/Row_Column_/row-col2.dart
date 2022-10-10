import 'package:flutter/material.dart';

class row_col_02 extends StatelessWidget {
  const row_col_02({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('data'),
        Text('s'),
        Image.network(
          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          //height: 200,
          // width: 200,
          fit: BoxFit.fitWidth,
        ),

        Image.network(
          "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          //height: 200,
          // width: 200,
          fit: BoxFit.fitWidth,
        ),
        // Image.network(
        //   "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        //   //height: 200,
        //   // width: 200,
        //   fit: BoxFit.fitWidth,
        // ),
        /// f
      ],
    );
  }
}
