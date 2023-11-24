import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search, color: Color(0xFF215757)),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      hintStyle: TextStyle(color: Color(0xFF215757)),
                    ),
                    cursorColor: Colors.black,
                    onChanged: (value) {
                      // Perform search here
                    },
                  ),
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Color(0xFF215757),
                  child: Icon(Icons.person, color: Colors.white, size: 24.0),
                ),
                onPressed: () {
                  // Profile action here
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Recommended for You and See All
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 7.0, 7.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for You',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle See All action
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromARGB(192, 177, 157, 23),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Headline News Section
              GestureDetector(
                onTap: () {
                  // Handle click on the headline news
                },
                child: Container(
                  height: 210.0, // Fixed height
                  margin: EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.network(
                          'https://cf.ltkcdn.net/family/images/orig/277805-1600x1066-filipino-culture-traditions.jpg',
                          height: 210.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Empowering the Future: Bridging the Gap with Financial Education for Filipino Millennials',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Category Buttons Section
              Container(
                height: 30.0,
                margin: EdgeInsets.fromLTRB(8.0, 1.0, 0.0, 1.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF215757),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(90.0, 1.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      child: Text('Budgeting',
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',), ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(90.0, 1.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      child: Text('Saving',
                      style: TextStyle(color: Colors.black, fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',), ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(90.0, 1.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      child: Text('Insurance',
                      style: TextStyle(color: Colors.black, fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',), ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(90.0, 1.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      child: Text('Taxes',
                      style: TextStyle(color: Colors.black, fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',), ),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(130.0, 1.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                      child: Text('Behavioral Finance',
                      style: TextStyle(color: Colors.black, fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',), ),
                    ),
                  ],
                ),
              ),

              // Other News Section
              // News 1
              GestureDetector(
                onTap: () {
                  // Handle click on News 1
                },
                child: Container(
                  height: 180.0, // Fixed height
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.network(
                          'https://media.philstar.com/images/the-philippine-star/lifestyle/arts-and-culture/20170528/PHILSTAR/BUSINESS%20FEATURES/usual/financial.jpg',
                          height: 180.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Filipinos Financial Literacy: What Numbers Say and Why It Matters',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // News 2
              GestureDetector(
                onTap: () {
                  // Handle click on News 2
                },
                child: Container(
                  height: 180.0, // Fixed height
                  margin: EdgeInsets.fromLTRB(10, 3, 16, 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.network(
                          'https://media.philstar.com/photos/2023/05/22/1_2023-05-22_15-11-18276_thumbnail.jpg',
                          height: 180.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Empowering the Future: Educators Focus on Instilling Financial Education Among Youth',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Ensures equal space for all tabs
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24.0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book, size: 24.0),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer, size: 24.0),
              label: 'Ask',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics, size: 24.0),
              label: 'Analytics',
            ),
          ],
          selectedItemColor: Color(0xFF215757),
          unselectedItemColor: Colors.grey,
          currentIndex: 1, // The index of the current tab (Learn in this case)
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushReplacementNamed(context, '/home');
                break;
              case 1:
                break;
              case 2:
                Navigator.pushReplacementNamed(context, '/ask');
                break;
              case 3:
                Navigator.pushReplacementNamed(context, '/analytics');
                break;
            }
          },
        ),
      ),
    );
  }
}
