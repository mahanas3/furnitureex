import 'package:flutter/material.dart';

class Sofa extends StatelessWidget {
  const Sofa({super.key});

  @override
  Widget build(BuildContext context) {

    List tableimages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgNnHvi7VXAPua1HRu9PHkQOPKHAxrk1Q9BQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkaRpmSiFPome6qF4Ef5QZ5uwl3o208YdNyg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG-NCEp5FE3ouinIIxduLG8LiN_8a8iZplVg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZWWwM_hzLosCFquUv-xQiLDDRWXmqO9qe_A&usqp=CAU'
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
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(tableimages[index]),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10)),
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

