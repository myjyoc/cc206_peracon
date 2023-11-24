import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  NewsDetailPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildImageStack(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Explore the transformative journey towards a financially empowered future as we delve into the crucial role of financial education in bridging gaps for Filipino millennials. Uncover insights, strategies, and stories that empower the younger generation to navigate the complex landscape of personal finance, making informed decisions for a brighter and more secure tomorrow. Embark on a path of knowledge and growth as we unravel the intricacies of financial literacy. This exploration goes beyond numbers, offering a holistic understanding of money management. Discover how cultivating financial awareness becomes a catalyst for shaping a prosperous and fulfilling life. Join us on this journey towards economic empowerment and sustainable financial well-being. As we navigate the ever-evolving landscape of financial realities, our exploration extends into the realm of adaptive financial strategies and innovative approaches. Delve into cutting-edge insights and contemporary methodologies that empower you to proactively respond to the dynamic economic environment. Through this journey, gain a nuanced understanding of how technology, evolving markets, and global trends impact personal finance. Uncover the potential of transformative financial tools and platforms, enabling you to stay agile and resilient in the face of change. ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Color(0xFF215757),
                ),
                textAlign: TextAlign.justify,
                maxLines: 200,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Add more content as needed
          ],
        ),
      ),
    );
  }

  Widget _buildImageStack(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            height: 400.0,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: const Color.fromARGB(255, 12, 12, 12),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height - 775,
            left: 20,
            right: 20,
            child: Container(
              margin: EdgeInsets.only(bottom: 5.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color(0xFF215757),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
