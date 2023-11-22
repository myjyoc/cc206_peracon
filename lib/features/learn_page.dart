import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Container(
          child: Row(
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Headline News Section
              Container(
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
                          fontFamily: 'Open Sans',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Category Buttons Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                   margin: EdgeInsets.only(left: 8.0, right: 8.0),
                   child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text('Budgeting'),
                    ),
                  ),
                  ), 
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                     ),
                      child: Text('Debt Management'),
                    ),
                  ),
                ),
              ],
            ),

              // Other News Section
              // News 1
              Container(
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
                          fontFamily: 'Open Sans', 
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // News 2
              Container(
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
                          fontFamily: 'Open Sans', 
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}