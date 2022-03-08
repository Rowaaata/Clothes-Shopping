import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled30/Category.dart';

import 'package:untitled30/constants.dart';
import 'package:untitled30/screens/ProductsAll.dart';
import 'package:untitled30/screens/Search.dart';
import 'package:untitled30/screens/Sections.dart';
import 'package:untitled30/screens/Types.dart';

import 'Details.dart';
import 'Popular.dart';
import 'ProductsAll.dart';
import 'Products.dart';
import 'SignIn.dart';
import 'SignUp.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var page = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _scaffoldkey.currentState?.openDrawer(),
          icon: SvgPicture.asset("Assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("Assets/icons/Location.svg"),
            const SizedBox(
              width: defaultpadding / 2,
            ),
            Text(
              "Egypt",
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("Assets/icons/Notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultpadding),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Explore",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              "Best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultpadding),
              child: SearchForm(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  AllCategories.length,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.only(right: defaultpadding),
                        child: Types(
                          Icon: AllCategories[index].Icon,
                          title: AllCategories[index].title,
                          press: () {},
                        ),
                      ),
                ),
              ),
            ),
            Column(
              children: [
                Sections(title: "New Arrival", PressSeeAll: () {}),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  popularProducts.length,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.only(left: defaultpadding),
                        child: Products(
                          image: popularProducts[index].image,
                          title: popularProducts[index].title,
                          Price: popularProducts[index].price,
                          bgColor: popularProducts[index].bgColor,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Details(product: popularProducts[index]),
                                ));
                          },
                        ),
                      ),
                ),
              ),
            ),
            Popular(title: "Popular", PressSeeAll: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  AllProduct.length,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.only(left: defaultpadding),
                        child: Products(
                          image: AllProduct[index].image,
                          title: AllProduct[index].title,
                          Price: AllProduct[index].price,
                          bgColor: AllProduct[index].bgColor,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Details(product: AllProduct[index]),
                                ));
                          },
                        ),
                      ),
                ),
              ),
            ),
          ]),
        ),
      ),
      drawer: Drawer(
        elevation: 8.0,
        child: ListView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 40.0,
                    backgroundImage: NetworkImage(
                      'https://previews.123rf.com/images/metelsky/metelsky1904/metelsky190400021/121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Name@gmail.com",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  page = 1;
                });
                Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen()));
              },
              title: Text("SignIn"),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  page = 2;
                });
                Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUpScreen()));
              },
              title: Text("SignUp"),
            ),
          ],
        ),
      ),
    );
  }


  Widget viewPage() {
    switch (page) {
      case 1:
        return LoginScreen();
      case 2:
        return SignUpScreen();
    }
    return Container();
  }
}
