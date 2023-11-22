import 'package:flutter/material.dart';
import 'package:furnitureex/provider/screen_provider.dart';
import 'package:provider/provider.dart';

class Chair extends StatelessWidget {
  const Chair({super.key});

  @override
  Widget build(BuildContext context) {
    List tableimages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgpAMGRff08rUQtubrSir_PrVZ-_hwpAJWsw&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8dw64fhiCWNh1oJcvnqLnIW5gdTGD6Joh4Q&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtBRAfozHBltZeZTCNTxKcoAuzm3xxGzn77g&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShVIWkZQN4OrUz8rYOn4aBPTglwwClOLYlqg&usqp=CAU'
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

    List price = ['\$20.00', '\$30.00', '\$80.00', '\$39.00'];

    return Scaffold(
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
                              child: InkWell(onTap: () {
                                context.read<ScreenProvider>().chairDetails(
                                    context);
                              },
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              tableimages[index]),
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
                                Text(price[index]),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.grey[700],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        backgroundColor: Colors.green[800]),
                                    onPressed: () {
                                      context.read<ScreenProvider>().addCart(
                                          context, tableimages[index],
                                          title[index], price[index]);
                                    },
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

