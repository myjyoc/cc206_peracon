// IncomeExpenseAnalysisTab.dart
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class IncomeExpenseAnalysisTab extends StatelessWidget {
  const IncomeExpenseAnalysisTab({Key? key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the pie chart
    Map<String, double> dataMap = {
      'Shopping': 4,
      'Personal Spending': 6,
      'Debts': 7,
      'Savings': 10,
      'Utilities': 8,
      'Insurance': 5,
      'Housing': 30,
      'Transportation': 10,
      'Food': 15,
    };

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pie Chart
          Container(
            margin: EdgeInsets.all(16.0),
            child: PieChart(
              dataMap: dataMap,
              chartType: ChartType.ring,
              chartRadius: MediaQuery.of(context).size.width / 2.7,
              ringStrokeWidth: 32,
              colorList: [
                Colors.blue,
                Colors.green,
                Colors.red,
                Colors.yellow,
                Colors.orange,
                Colors.purple,
                Colors.cyan,
                Colors.amber,
                Colors.indigo,
              ],
              chartValuesOptions: ChartValuesOptions(
                showChartValuesInPercentage: true,
              ),
            ),
          ),

          // Explanation Paragraph
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 235, 234, 1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              "You're spending a significant portion of your income on housing. Consider exploring ways to reduce your housing costs, such as downsizing, finding roommates, or negotiating your rent. Additionally, you can explore alternative housing options such as shared living spaces or looking for more affordable neighborhoods. By finding creative solutions to lower your housing expenses, you can free up more funds for savings, debt repayment, or other financial goals.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.0,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
