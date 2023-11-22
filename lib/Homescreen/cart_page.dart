import 'package:flutter/material.dart';
import 'package:furnitureex/provider/screen_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Image(
                            image: NetworkImage(context
                                .read<ScreenProvider>()
                                .cart[index]['image']),
                            height: 180,
                            width: 200,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    context.read<ScreenProvider>().cart[index]
                                    ['title'],
                                    style: const TextStyle(fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    context.read<ScreenProvider>().cart[index]
                                    ['price'],
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: context.read<ScreenProvider>().cart.length,
                separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}