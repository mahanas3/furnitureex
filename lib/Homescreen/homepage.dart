import 'package:flutter/material.dart';
import 'package:furnitureex/provider/screen_provider.dart';
import 'package:provider/provider.dart';
import '../bed_screen/bed_page.dart';
import '../chair_screen/chair_page.dart';
import '../sofa_screen/sofa_page.dart';
import '../table_screen/table_page.dart';
import 'cart_page.dart';
import 'package:badges/badges.dart' as badges;

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
      child: Consumer<ScreenProvider>(
          builder: (BuildContext context, value, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0x000000ff),
            elevation: 0,
            title: Text(value!.isDark ? "Furnitureex" : "Furnitureex",
                style: const TextStyle(color: Colors.black87)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: badges.Badge(
                    badgeContent: Text(
                        context.watch<ScreenProvider>().cart.length.toString()),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cart()));
                        },
                        icon: const Icon(
                          Icons.notification_add_outlined,
                          color: Colors.black87,
                        ))),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
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
        );
      }),
    );
  }
}
