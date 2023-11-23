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
                      suffixIcon: Icon(Icons.search, 
                      color: Color.fromRGBO(16, 114, 86, 0.912)),
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                       hintStyle: TextStyle(color: Color.fromRGBO(16, 114, 86, 0.912)), // Set hint text color to green
                    ),
                    onChanged: (value) {
                      // Perform search here
                    },
                  ),
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Color.fromRGBO(16, 114, 86, 0.912),
                  child: Icon(Icons.person, color: Color.fromARGB(255, 255, 255, 255)),
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
                          color: const Color.fromRGBO(16, 114, 86, 0.912),
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
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15.0), // Adjust the border radius as needed
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
)

              ),

              // Category Buttons Section
              Container(
               height: 50.0,
                margin: EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(16, 114, 86, 0.912), 
                      ),
                      minimumSize: MaterialStateProperty.all(Size(50.0, 1.0)), 
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
               EdgeInsets.all(15.0), // Add margin around the corners
             ),
              ),
                      child: Text('Budgeting'),
                    ),
                    SizedBox(width: 5.0),
                    SizedBox(height: 5.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(16, 114, 86, 0.912),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(100.0, 5.0)), 
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
               EdgeInsets.all(15.0), // Add margin around the corners
             ),
              ),
                      child: Text('Saving'),
                    ),
                    SizedBox(width: 10.0),
                     SizedBox(height: 5.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                       style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(16, 114, 86, 0.912),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(100.0, 5.0)), 
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
               EdgeInsets.all(15.0), // Add margin around the corners
             ),
              ),
                      child: Text('Insurance'),
                    ),
                    SizedBox(width: 10.0),
                    
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(16, 114, 86, 0.912),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(100.0, 5.0)), 
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
               EdgeInsets.all(15.0), // Add margin around the corners
             ),
              ),
                      child: Text('Taxes'),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle category button click
                      },
                       style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(16, 114, 86, 0.912),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(100.0, 5.0)), 
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30.0), 
                  ),
                ),
                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
               EdgeInsets.all(15.0), // Add margin around the corners
             ),
              ),
                      child: Text('Behavioral Finace'),
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
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15.0), // Adjust the border radius as needed
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
)
),

              // News 2
              GestureDetector(
                onTap: () {
                  // Handle click on News 2
                },
                child: Container(
  margin: EdgeInsets.all(16.0),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15.0), // Adjust the border radius as needed
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
)

              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Ensures equal space for all tabs
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
          selectedItemColor: Color.fromRGBO(16, 114, 86, 0.912),
          unselectedItemColor: Colors.grey,
          currentIndex: 0, // The index of the current tab (Home in this case)
          onTap: (int index) {
            // Handle navigation to different tabs
            // You can use a Navigator or any other navigation logic here
          },
        ),
      ),
    );
  }
  }
