import 'package:flutter/material.dart';
import 'package:furnitureex/utilities/dimensions.dart';

class TableDetails extends StatefulWidget {
  const TableDetails({super.key});

  @override
  State<TableDetails> createState() => _TableDetailsState();
}

class _TableDetailsState extends State<TableDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: Dimensions.heightCalc(context, 700),
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffECECEC)),
              child: const Image(image: AssetImage('assets/images/table.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 32),
              child: Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black87),
                child: const Text('Dining Table',
                    style: TextStyle(fontFamily: 'serif', fontSize: 20)),
              ),
            )
          ])
        ],
      ),
    );
  }
}

// Image(
// image: NetworkImage(
// 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0sgiGW08Jm5kcy0uN4yrkBW6u0XFtY_mnfA&usqp=CAU'))
