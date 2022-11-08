import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/common_candidate.dart';

import 'app_bar_widget.dart';

class AddCandidates extends StatefulWidget {
  const AddCandidates({Key? key}) : super(key: key);

  @override
  _AddCandidatesState createState() => _AddCandidatesState();
}

class _AddCandidatesState extends State<AddCandidates> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
        title: 'Batch - 1',
        leadingIcon: Icon(
          Icons.arrow_back_ios,
          color: blackTextColor,
          size: 32,
        ),
        action: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: blackTextColor,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
        form: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "No.Of.Candidate - ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "05",
                    style: TextStyle(
                      color: Color(0xff000aff),
                      fontSize: 24,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.select_all_outlined,
                      color: blackTextColor,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonCandidate(
                busy: true,
                common: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: hashTextColor,
                      size: 18,
                    ),
                    Text(
                      "Chennai",
                      style: TextStyle(
                          color: Color(0xff7f7878),
                          fontSize: 14,
                          fontFamily: 'Ubuntu'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle,
                        color: hashTextColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
