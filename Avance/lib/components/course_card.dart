import 'package:flutter/material.dart';
import '../configs/colors.dart';
import './tag.dart';

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final String code;
  final String courseTitle;
  final String status;
  final String profe;
  final String diploma;
  final Color tagColor;

  // Constructor del widget CourseCard
  const CourseCard({
    Key? key,
    required this.imageUrl,
    required this.code,
    required this.courseTitle,
    required this.status,
    required this.profe,
    required this.diploma,
    this.tagColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Card(
        color: AppColors.backgroundColor,
        shadowColor: AppColors.sombreadoColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 15,
                bottom: 15,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    code,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textColor,
                    ),
                  ),
                  Text(
                    courseTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Text(status),
                      SizedBox(width: 15),
                      Tag(text: this.diploma, color: tagColor),
                    ],
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  Text(profe),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
