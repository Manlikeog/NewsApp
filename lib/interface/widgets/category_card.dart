import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 12,
          bottom: 7,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/doctor4.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            XBox(15),
            Container(
              height: 100,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseHeaderText(
                    string: "Candidate Biden called Saudi Arabia a 'Pariah'",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    maxlines: 2,
                  ),
                  YBox(20),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: greyColor,
                        ),
                        XBox(10),
                        Text('4 Hours ago')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
