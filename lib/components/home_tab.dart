import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Name Section
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 3.0, 3.0, 3.0),
                child: Text(
                  'Rhowena Alimeos',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Wallet Section
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'P100,000', // Replace with actual balance
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircleIcon(Icons.account_balance, 'Savings', 'P60,000'),
                        _buildCircleIcon(Icons.attach_money, 'Income', 'P20,000'),
                        _buildCircleIcon(Icons.money_off, 'Expenses', 'P10,000'),
                        _buildCircleIcon(Icons.credit_card, 'Debts', 'P30,000'),
                      ],
                    ),
                  ],
                ),
              ),

              // Tips Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Tips',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Two boxes with icons and finance tips text
              _buildTipsBox(Icons.home, 'Income Tip', "You're spending a significant portion of your income on housing. Consider exploring ways to reduce your housing costs, such as downsizing, finding roommates, or negotiating your rent."),
              SizedBox(height: 8.0),
              _buildTipsBox(Icons.trending_down, 'Debt Tip', "You have the opportunity to pay your debt using your available savings. Consider allocating a portion of your savings towards debt repayment. By utilizing your savings to pay off your debt, you can eliminate the financial burden sooner and achieve peace of mind."),

              // Goals Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Goal boxes
              _buildGoalBox(Icons.laptop, 'Buy a Laptop', 'P50,000', 80),
              _buildGoalBox(Icons.car_rental, 'Buy a Car', 'P500,000', 50),
              _buildGoalBox(Icons.home, 'Buy a House', 'P1,000,000', 30),

              // Your content for the Home tab goes here
              // Add widgets, images, etc. as needed
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
          selectedItemColor: Colors.blue,
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

  Widget _buildTipsBox(IconData icon, String title, String content) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(5.0),
            child: Icon(
              icon,
              size: 30.0,
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, String label, String figure) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(12.0),
          child: Icon(
            icon,
            size: 30.0,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 2.0),
        Text(
          figure,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildGoalBox(IconData icon, String description, String price, int completionPercent) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      icon,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            '$completionPercent%',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}