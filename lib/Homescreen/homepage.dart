import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:furnitureex/Homescreen/bed_screen.dart';
import 'package:furnitureex/Homescreen/sofa_page.dart';
import 'package:furnitureex/Homescreen/table_page.dart';
import 'package:furnitureex/provider/Furniture_Provider.dart';
import 'package:provider/provider.dart';
import 'chair_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdwnW72nCDnb5j09S_3Jn1aRSxiZ5kUTztzQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe_uFEsy3SurrmMDLuZShgYFEQ4Zb0DceS4w&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEzhpTPjtbjifxNTCsADLRI_jSshG0jXZGtQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAdFSlWLvfQUmiKFMiDDLUKxmRDLchfNHxQQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnV9L_NHuHNqQnBbzKFtjxU_SbE3cDWukozA&usqp=CAU'
    ];
    return DefaultTabController(
      length: 4,
      child: Consumer<FurnitureProvider>(
        builder: (BuildContext context, value, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(value!.isDark ? "Furnitureex" : "Furnitureex"),
            actions: [
              //FlutterSwitch(value: status, onToggle: onToggle)
            ],

          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.white)),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                  fontFamily: 'popins', color: Colors.black87),
                              labelText: 'Search',
                              labelStyle: const TextStyle(
                                  fontFamily: 'popins', color: Colors.black87)),
                        ),
                      ),
                    ),
                    const Icon(Icons.notification_add_outlined),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 220),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'raleway'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 170,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.fill)),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                            width: 20,
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'raleway',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                    unselectedLabelColor: Colors.redAccent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.white, Colors.grey]),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    controller: _tabController,
                    isScrollable: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    tabs: const [
                      Tab(
                        child: Text('Table',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'popins',
                                fontSize: 20)),
                      ),
                      Tab(
                        child: Text('Chair',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'popins',
                                fontSize: 20)),
                      ),
                      Tab(
                        child: Text('Sofa',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'popins',
                                fontSize: 20)),
                      ),
                      Tab(
                        child: Text('Bed',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'popins',
                                fontSize: 20)),
                      )
                    ]),
                Expanded(
                  child: TabBarView(
                      controller: _tabController,
                      children: const [TablePage(), Chair(), Sofa(), Bed()]),
                )
              ],
            ),
          ),
        );}
      ),
    );
  }
}
