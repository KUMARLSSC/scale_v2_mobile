import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/common_candidate.dart';

class BatchCandidates extends StatelessWidget {
  const BatchCandidates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
      title: 'Batch - 1',
      leadingIcon: Icon(
        Icons.arrow_back_ios,
        color: blackTextColor,
        size: 32,
      ),
      form: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
              CommonCandidate(busy: true),
              verticalSpaceTiny,
            ],
          )),
    );
  }
}
