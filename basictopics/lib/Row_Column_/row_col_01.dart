import 'package:flutter/material.dart';

class row_col_01 extends StatefulWidget {
  const row_col_01({super.key});

  @override
  State<row_col_01> createState() => _row_col_01State();
}

class _row_col_01State extends State<row_col_01> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.green,

        //alignment: Alignment.center,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('data'),
              Container(
                color: Colors.amber,
                height: 10.0,
                width: 20.0,
              ),
              Text('data')
            ]),
      ),
    );
  }
}
