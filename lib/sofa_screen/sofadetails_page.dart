import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureex/utilities/dimensions.dart';

class SofaDetails extends StatefulWidget {
  const SofaDetails({super.key});

  @override
  State<SofaDetails> createState() => _SofaDetailsState();
}

class _SofaDetailsState extends State<SofaDetails> {
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
              child: const Image(image: AssetImage('assets/images/sofa.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 20, right: 15),
              child: Container(
                width: Dimensions.widthCalc(context, 330),
                height: Dimensions.heightCalc(context, 400),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 310),
                  child: Row(
                    children: [
                      const Text(
                        'Dining Table',
                        style: TextStyle(fontFamily: 'serif', fontSize: 25),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 90),
                      ),
                      const Text(
                        '\$100',
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'popins',
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 200, top: 340),
                  child: Text(
                    '5 Seater',
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'popins', color: Colors.grey),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    'Most dining rooms have a central table and chairs. Traditional dining tables are often wood; however, some prefer a more modern look, choosing instead to use a glass-topped table with metal legs. Dining chairs can also be made of wood or other materials. Dining room chairs dont necessarily have to be a matched set',
                    style: TextStyle(fontFamily: 'popins', fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 40),
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(CupertinoIcons.minus),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: Dimensions.heightCalc(context, 40),
                        width: Dimensions.widthCalc(context, 40),
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(CupertinoIcons.add),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.heightCalc(context, 70),
                        width: Dimensions.widthCalc(context, 170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Add to Cart',
                              style:
                              TextStyle(fontFamily: 'raleway', fontSize: 20)),
                        ),
                      ),
                      Container(
                        height: Dimensions.heightCalc(context, 70),
                        width: Dimensions.widthCalc(context, 170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Buy Now',
                              style:
                              TextStyle(fontFamily: 'raleway', fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ])
        ],
      ),
    );
  }
}
