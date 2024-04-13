import 'package:bookapp/bookpage.dart';
import 'package:bookapp/state/bottomnavbar.dart';
import 'package:bookapp/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Apps',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bottomNavBarController = Get.put(BottomNavBarController());
    final List<Map<String,dynamic>>category = [
      {
        "image" : "assets/images/psychology.png",
        "name" : "Psychology"
      },
      {
        "image" : "assets/images/money.png",
        "name" : "Money"
      },
      {
        "image" : "assets/images/house.png",
        "name" : "House"
      },
      {
        "image" : "assets/images/robotic.png",
        "name" : "Technology"
      },
      {
        "image" : "assets/images/novel.png",
        "name" : "Novel"
      },
      {
        "image" : "assets/images/sports.png",
        "name" : "Sport"
      },
      {
        "image" : "assets/images/healthcare.png",
        "name" : "Healthy"
      },
      {
        "image" : "assets/images/father.png",
        "name" : "Kids"
      }
    ];
    final List<Map<String,dynamic>> bestseller = [
      {
        "image" : "https://bci.kinokuniya.com/jsp/images/book-img/97808/97808571/9780857197689.JPG",
        "name" : "The Psychology of Money",
        "price" : 219.00,
        "review" : 5.0
      },
      {
        "image" : "https://d2sofvawe08yqg.cloudfront.net/beginningflutterwithdart/s_hero2x?1653781344",
        "name" : "Beginning Flutter 3.0 with Dart",
        "price" : 500.00,
        "review" : 5.0
      },
      {
        "image" : "https://www.independent.org/images/books_retina/american_health_care_400x600.jpg",
        "name" : "American Health Care",
        "price" : 360.00,
        "review" : 5.0
      },
            {
        "image" : "https://m.media-amazon.com/images/I/91hJe52QzjL._AC_UF1000,1000_QL80_.jpg",
        "name" : "The Original Illustrated Sherlock Holmes",
        "price" : 270.00,
        "review" : 5.0
      }
    ];
    final List<Map<String,dynamic>> popular = [
      {
        "image" : "https://i.ebayimg.com/images/g/yacAAOSwVuBjwm6X/s-l500.jpg",
        "name" : "La Gazzetta dello sport",
        "price" : 129.00,
        "review" : 5.0
      },
      {
        "image" : "https://passiveincomemd.com/wp-content/uploads/2016/07/Rich-Dad-Poor-Dad-1.jpg",
        "name" : "Rich dad pool dad",
        "price" : 285.00,
        "review" : 5.0
      },
      {
        "image" : "https://bci.kinokuniya.com/jsp/images/book-img/97814/97814721/9781472139955.JPG",
        "name" : "Mind set",
        "price" : 360.00,
        "review" : 5.0
      },
            {
        "image" : "https://m.media-amazon.com/images/I/51q4JHL73lL._SX342_SY445_.jpg",
        "name" : "The grammar book",
        "price" : 300.00,
        "review" : 5.0
      }
    ];
    return GetBuilder<BottomNavBarController>(
      builder: (_)=> Scaffold(
        body : Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: width,
                color: ThemeApp().secondary,
                padding: const EdgeInsets.symmetric(
                  vertical : 20,
                  horizontal: 20
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: IconButton(icon: Image.asset("assets/images/menu.png"),onPressed: (){},iconSize: 30,),
                      titleAlignment: ListTileTitleAlignment.center,
                      title: const Text(
                        'Book Store',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18
                        ),
                      ),
                      trailing: IconButton(icon: Image.asset("assets/images/notification.png"),onPressed: (){},iconSize: 30,),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orange.shade50
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontSize: 18
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              )
            ),
            Expanded(
              flex: 9,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Category',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ),
                  GridView.count(
                    padding: const EdgeInsets.only(top: 20,bottom: 0),
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 15,
                    children: category.map(
                      (e) => Container(
                        child: Column(
                          children: [
                            Image.asset(
                              e['image'],
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              e['name'],
                              style: TextStyle(
                                color: ThemeApp().secondary,
                                fontFamily: 'Poppins',
                                fontSize: 14
                              )
                            )
                          ],
                        ),
                      )
                    ).toList(),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Best Seller',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    width: width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: bestseller.map(
                          (e) => InkWell(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> BookPage(
                              name: e['name'], 
                              image: e['image'], 
                              price: e['price'].toString(), 
                              review: e['review'].toString()
                            ))),
                            child: Container(
                              width: width*0.4,
                              height: 320,
                              margin: EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Image.network(e['image'],width: width*0.4,height:   250,fit: BoxFit.cover,),
                                  Container(
                                    color: Colors.white,
                                    width: width*0.4,
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                    height: 70,
                                    child: Column(
                                      children: [
                                        Text(
                                          e['name'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Poppins'
                                          ),
                                        ),
                                        Expanded(child: SizedBox(height: 1,)),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.amber,),
                                            Text(
                                              e['review'].toString(),
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Poppins'
                                              ),
                                            ),
                                            Expanded(child: SizedBox(height: 1,)),
                                            Text(
                                              "฿ ${e['price'].toStringAsFixed(2)}",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: ThemeApp().secondary,
                                                fontFamily: 'Poppins'
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          )
                        ).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Popular',
                      style: TextStyle(
                        color: ThemeApp().secondary,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    width: width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: popular.map(
                          (e) => InkWell(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> BookPage(
                              name: e['name'], 
                              image: e['image'], 
                              price: e['price'].toString(), 
                              review: e['review'].toString()
                            ))),
                            child: Container(
                              width: width*0.4,
                              height: 320,
                              margin: EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Image.network(e['image'],width: width*0.4,height:   250,fit: BoxFit.cover,),
                                  Container(
                                    color: Colors.white,
                                    width: width*0.4,
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                    height: 70,
                                    child: Column(
                                      children: [
                                        Text(
                                          e['name'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Poppins'
                                          ),
                                        ),
                                        Expanded(child: SizedBox(height: 1,)),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.amber,),
                                            Text(
                                              e['review'].toString(),
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Poppins'
                                              ),
                                            ),
                                            Expanded(child: SizedBox(height: 1,)),
                                            Text(
                                              "฿ ${e['price'].toStringAsFixed(2)}",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: ThemeApp().secondary,
                                                fontFamily: 'Poppins'
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          )
                        ).toList(),
                      ),
                    ),
                  )
                ],
              )
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            bottomNavBarController.onChangeCurrentIndex(value);
          },
          backgroundColor: ThemeApp().primary,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          currentIndex: bottomNavBarController.current,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Prompt',
            color: ThemeApp().secondary
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Prompt',
            color: Colors.grey
          ),
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/images/store.png",width: 28,height: 28,),
              icon: Image.asset("assets/images/store-outline.png",width: 28,height: 28,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/images/favorite.png",width: 28,height: 28,),
              icon: Image.asset("assets/images/favorite-outline.png",width: 28,height: 28,),
              label: 'Favorite'
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/images/cart.png",width: 28,height: 28,),
              icon: Image.asset("assets/images/cart-outline.png",width: 28,height: 28,),
              label: 'Message'
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset("assets/images/user.png",width: 28,height: 28,),
              icon: Image.asset("assets/images/user-outline.png",width: 28,height: 28,),
              label: 'Account'
            ),
          ]
        ),
      )
    );
  }
}
