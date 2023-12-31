import 'package:flutter/material.dart';
import 'package:furnitureex/provider/screen_provider.dart';
import 'package:provider/provider.dart';

class Bed extends StatelessWidget {
  const Bed({super.key});

  @override
  Widget build(BuildContext context) {

    List tableimages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7jfqUyVBmTyAzCE2GrkZlsJg5z_-kB-Y7Zw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO6VlBmtgs_Pg-4xPS-UZJvtaMIUrqOlrfww&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_z78RIx5J-oh_7sc24rSG9I4Us2EXiNrkUw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxI-YTnHFPZMTVRb8gnIjUC3p3V27ej8D76A&usqp=CAU'
    ];

    List title = [
      'Living Room Table',
      'Office Table',
      'Wooden Table',
      'Dyning Table'
    ];

    List content = [
      'xdcfvgbhnjmkxdc',
      'szxdfcgvbhujnmk',
      'zsxdcfvgbhjnzsx',
      'zsxdrctfvgybhnjm'
    ];
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 150,
                      width: 70,
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 120,
                              child: InkWell(onTap: (){
                                context.read<ScreenProvider>().bedDetails(context);
                              },
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(tableimages[index]),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  title.length > index ? title[index] : '',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  content.length > index ? content[index] : '',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const Text(r"$" '20.00'),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.grey[700],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        backgroundColor: Colors.green[800]),
                                    onPressed: () {},
                                    child: const Text('Add to cart'))
                              ],
                            )
                          ],
                        ),
                      ),
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(
                height: 1,
              ),
              itemCount: tableimages.length,
            )
          ],
        ),
      ),
    );
  }
}

