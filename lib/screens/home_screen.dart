import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/cerousel_images.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';
import 'package:malavika_machine_test/screens/home_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: menuButtonColor,
        ),
        child: BottomNavigationBar(
          backgroundColor: menuButtonColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Location',
            ),
            BottomNavigationBarItem(
                label: 'Favorite',
                icon: Container(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.favorite,
                  ),
                )),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_bag_outlined),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: textColor,
          unselectedItemColor: Colors.white54,
          onTap: _onItemTapped,
        ),
      ),
      appBar: AppBar(
        bottom: PreferredSize(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.location_on,
                      color: textColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text('Alappey',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor)),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: width * .6,
                      height: height * .05,
                      decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: textColor),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: textColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: textColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: width * .1,
                    height: height * .06,
                    decoration: BoxDecoration(
                        color: menuColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.menu,
                      color: textColor,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
          preferredSize:
              Size.fromHeight(110), //Change 10 to which ever size you desire.
        ),
        actions: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi Person,You're at",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: textColor)),
                  SizedBox(
                    width: width * .41,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SliderImage()));
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: ClipOval(
                          child: Image.asset('assets/images/profile.jpg')),
                    ),
                  ),
                  SizedBox(
                    width: width * .07,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Body(height: height, width: width),
    );
  }
}
