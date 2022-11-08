import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/common_candidate.dart';

class TrainerCandidates extends StatelessWidget {
  const TrainerCandidates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CommonCandidate(
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
          verticalSpaceSmall,
          CommonCandidate(
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
          verticalSpaceSmall,
          CommonCandidate(
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
        ],
      ),
    );
  }
}
