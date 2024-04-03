import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isButtonPressed = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          
    
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 82, 78, 78) // Set font size to 24 pixels
                              ),
                        ),
                        Text(
                          'Khaledker',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 82, 78, 78) // Set font size to 24 pixels

                              ),
                        ),
                      ],
                    ),

                    // Profile pic
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/khaled.jpg'),
                      radius: 30, // Adjust the radius of the circle
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 239, 255),

                  borderRadius: BorderRadius.circular(20),
                  // Add border radius
                ),
                child: Stack(
                  children: [
                    Positioned(child: Image.asset('assets/images/h.png')),
                    Positioned(
                        top: 35,
                        right: 35,
                        child: Text(
                          'How do you feel?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 82, 78, 78)),
                        )),
                    Positioned(
                        top: 65,
                        right: 43,
                        child: Text(
                          'Fill out your medical\ncard right now',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 78, 78)),
                        )),
                    Positioned(
                      bottom: 15,
                      right: 35,
                      child: GestureDetector(
                        onTapDown: (_) {
                          setState(() {
                            _isButtonPressed = true;
                          });
                        },
                        onTapUp: (_) {
                          setState(() {
                            _isButtonPressed = false;
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            _isButtonPressed = false;
                          });
                        },
                        child: Container(
                          width: 170, // Width of the button
                          height: 40, // Height of the button
                          decoration: BoxDecoration(
                            color: _isButtonPressed
                                ? Colors.red
                                : Color.fromARGB(255, 143, 199,
                                    245), // Change color when pressed
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.white, // Text color
                                fontSize: 16, // Text size
                                fontWeight: FontWeight.bold, // Text weight
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 36.0), // Add some space below the search bar

              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'How can i help you?',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 221, 221,
                            238)), // Set the color of the hintText

                    filled: true, // Fill the background color
                    fillColor: Color.fromARGB(
                        255, 242, 242, 255), // Set the background color
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromARGB(255, 221, 221, 238)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none, // Remove border color
                    ),
                    // Remove border color
                  ),
                ),
              ),
              SizedBox(height: 36.0), // Add some space below the search bar
              // Add other widgets below the search bar as needed
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 221, 238),

                          borderRadius: BorderRadius.circular(20),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/icons/2.png'),
                              ),
                              Text(
                                'Heart',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 82, 78, 78)),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 20.0), // Add some space below the search bar

                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 221, 238),

                          borderRadius: BorderRadius.circular(20),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/icons/1.png'),
                              ),
                              Text(
                                'Surgeon',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 82, 78, 78)),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 20.0), // Add some space below the search bar

                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 221, 238),

                          borderRadius: BorderRadius.circular(20),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/icons/3.png'),
                              ),
                              Text(
                                'Dentist',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 82, 78, 78)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctor list',
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 19, color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 221, 238),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Stack(
                            children: [
                              Positioned(
                                top: 25,
                                left: 35,
                                child:  CircleAvatar(

                      backgroundImage: AssetImage('assets/images/1.jpg'),
                      radius: 50, // Adjust the radius of the circle
                    ),
                              ),

                              Positioned(
                                bottom: 55,
                                left: 23,
                                child:  Text('Dr.Albert Flores',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              )
                              ,
                              Positioned(
                                bottom: 29,
                                left: 27,
                                child:  Text('Surgeon, 5 y.e',style: TextStyle(color: Color.fromARGB(255, 180, 175, 175), fontSize: 16),)
                              ),

                              Positioned(
                                top: 105,
                                left: 58,
                                child:   Container(
                        height: 25,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),

                          borderRadius: BorderRadius.circular(5),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(

                                 Icons.star,
      color: Colors.yellow,
      size: 15, 
                              ),
                              Text(
                                '4.6',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 58, 56, 56)),
                              )
                            ],
                          ),
                        ),
                      ),

                              )
                            ],
                          )
                          // Add border radius
                          ),
                          SizedBox(width: 20,),
                           Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 221, 238),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Stack(
                            children: [
                              Positioned(
                                top: 25,
                                left: 35,
                                child:  CircleAvatar(

                      backgroundImage: AssetImage('assets/images/2.jpg'),
                      radius: 50, // Adjust the radius of the circle
                    ),
                              ),

                              Positioned(
                                bottom: 55,
                                left: 23,
                                child:  Text('Dr.Khaled ker',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              )
                              ,
                              Positioned(
                                bottom: 29,
                                left: 27,
                                child:  Text('Dentist, 3 y.e',style: TextStyle(color: Color.fromARGB(255, 180, 175, 175), fontSize: 16),)
                              ),

                              Positioned(
                                top: 105,
                                left: 58,
                                child:   Container(
                        height: 25,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),

                          borderRadius: BorderRadius.circular(5),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(

                                 Icons.star,
      color: Colors.yellow,
      size: 15, 
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 58, 56, 56)),
                              )
                            ],
                          ),
                        ),
                      ),

                              )
                            ],
                          )
                          // Add border radius
                          ),
                          SizedBox(width: 20,),
                           Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 221, 238),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Stack(
                            children: [
                              Positioned(
                                top: 25,
                                left: 35,
                                child:  CircleAvatar(

                      backgroundImage: AssetImage('assets/images/3.jpg'),
                      radius: 50, // Adjust the radius of the circle
                    ),
                              ),

                              Positioned(
                                bottom: 55,
                                left: 23,
                                child:  Text('Dr.Arlence MCores',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              )
                              ,
                              Positioned(
                                bottom: 29,
                                left: 27,
                                child:  Text('Therapist, 6 y.e',style: TextStyle(color: Color.fromARGB(255, 180, 175, 175), fontSize: 16),)
                              ),

                              Positioned(
                                top: 105,
                                left: 58,
                                child:   Container(
                        height: 25,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),

                          borderRadius: BorderRadius.circular(5),
                          // Add border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(

                                 Icons.star,
      color: Colors.yellow,
      size: 15, 
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 58, 56, 56)),
                              )
                            ],
                          ),
                        ),
                      ),

                              )
                            ],
                          )
                          // Add border radius
                          ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.white,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'Notifications',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
),

    );
  }
}

