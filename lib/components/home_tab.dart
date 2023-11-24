import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF215757);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.15);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF215757), // Set the color for the app bar
          title: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Color(0xFF215757), size: 24.0),
                ),
                onPressed: () {
                  // Profile action here
                },
              ),
            ],
          ),
        ),
        body: CustomPaint(
          painter: CurvePainter(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // User Name Section
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 3.0, 3.0, 3.0),
                child: Text(
                  'Rhowena Alimeos',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
              ),

              // Wallet Section
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFF2E5), // Background color for the icon
                              ),
                              padding: EdgeInsets.all(8.0), // Adjust padding as needed
                              child: Icon(
                                Icons.attach_money, // You can change the icon accordingly
                                size: 20.0,
                                color: Color(0xFFF49A40), // Icon color
                              ),
                            ),
                            SizedBox(width: 8.0), // Adjust spacing as needed
                            Text(
                              'My Balance',
                              style: TextStyle(
                                color: Color(0xFF215757),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '₱24,861.7', // Replace with actual balance
                          style: TextStyle(
                            color: Color(0xFF215757),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircleIcon(Icons.account_balance, 'Savings', '₱24,861.7', Color(0xFF27C153), Color(0xFFDDFFE7), Color(0xFF27C153)),
                        _buildCircleIcon(Icons.attach_money, 'Income', '₱44,862.35 ', Color(0xFFD64BC2), Color(0xFFFFDFF6), Color(0xFFD64BC2)),
                        _buildCircleIcon(Icons.money_off, 'Expenses', '₱44,862.35 ', Color(0xFFFF4437), Color(0xFFFFEBEA), Color(0xFFFF4437)),
                        _buildCircleIcon(Icons.credit_card, 'Debts', '₱13,145.65', Colors.black, Colors.grey[300]!, Colors.black),
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
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0xFF215757),
                  ),
                ),
              ),
              // Two boxes with icons and finance tips text
              _buildTipsBox(Icons.home, 'Income Tip', "You're spending a significant portion of your income on housing. Consider exploring ways to reduce your housing costs, such as downsizing, finding roommates, or negotiating your rent.", Color(0xFFFFEBEA), Color(0xFFFF4437)),
              SizedBox(height: 8.0),
              _buildTipsBox(Icons.credit_card, 'Debt Tip', "You have the opportunity to pay your debt using your available savings. Consider allocating a portion of your savings towards debt repayment. By utilizing your savings to pay off your debt, you can eliminate the financial burden sooner and achieve peace of mind.", Color(0xFFDDFFE7), const Color.fromARGB(255, 0, 0, 0)),

              // Goals Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color(0xFF215757),
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color(0xFF215757),
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
          selectedItemColor: Color.fromRGBO(16, 114, 86, 0.912),
          unselectedItemColor: Colors.grey,
          currentIndex: 0, // The index of the current tab (Home in this case)
          onTap: (int index) {
            switch (index) {
              case 0:
                break;
              case 1:
                Navigator.pushReplacementNamed(context, '/learn');
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

  Widget _buildTipsBox(IconData icon, String title, String content, Color boxColor, Color iconColor) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(5.0),
            child: Icon(
              icon,
              size: 30.0,
              color: iconColor,
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
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, String label, String figure, Color iconColor, Color bgColor, Color figureColor) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
          ),
          padding: EdgeInsets.all(12.0),
          child: Icon(
            icon,
            size: 25.0,
            color: iconColor,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Color(0xFF215757),
          ),
        ),
        SizedBox(height: 2.0),
        Text(
          figure,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            color: figureColor,
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
                      size: 25.0,
                      color: Color(0xFF215757),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0xFF215757),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 10.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
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
              fontWeight: FontWeight.w500,
              color: Color(0xFF215757),
            ),
          ),
        ],
      ),
    );
  }
}
