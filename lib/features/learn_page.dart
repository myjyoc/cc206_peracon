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
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    ),
                    onChanged: (value) {
                      // Perform search here
                    },
                  ),
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white),
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
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for You',
                      style: TextStyle(
                        fontSize: 20.0,
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
                          color: Colors.blue,
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
                  margin: EdgeInsets.all(16.0),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        'https://cf.ltkcdn.net/family/images/orig/277805-1600x1066-filipino-culture-traditions.jpg',
                        height: 210.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          'Empowering the Future: Bridging the Gap with Financial Education for Filipino Millennials',
                          style: TextStyle(
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

              // Category Buttons Section
              Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      child: Text('Category 1'),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      child: Text('Category 2'),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      child: Text('Category 3'),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      child: Text('Category 4'),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      child: Text('Category 5'),
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
                  margin: EdgeInsets.all(16.0),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        'https://media.philstar.com/images/the-philippine-star/lifestyle/arts-and-culture/20170528/PHILSTAR/BUSINESS%20FEATURES/usual/financial.jpg',
                        height: 180.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          'Filipinos Financial Literacy: What Numbers Say and Why It Matters',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // News 2
              GestureDetector(
                onTap: () {
                  // Handle click on News 2
                },
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        'https://media.philstar.com/photos/2023/05/22/1_2023-05-22_15-11-18276_thumbnail.jpg',
                        height: 180.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          'Empowering the Future: Educators Focus on Instilling Financial Education Among Youth',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Ask',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analytics',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: 1, // The index of the current tab (Learn in this case)
          onTap: (int index) {
            // Handle navigation to different tabs
            // You can use a Navigator or any other navigation logic here
          },
        ),
      ),
    );
  }
}
