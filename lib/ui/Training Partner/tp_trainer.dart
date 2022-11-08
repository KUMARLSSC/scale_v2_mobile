import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/common_trainer.dart';

class TPTrainers extends StatelessWidget {
  const TPTrainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xFFe9eaec),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              cursorColor: Color(0xFF000000),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF000000).withOpacity(0.5),
                  ),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
        ),
        verticalSpaceSmall,
        CommonTrainer(
          key: key,
        ),
        verticalSpaceSmall,
        CommonTrainer(
          key: key,
        ),
        verticalSpaceSmall,
        CommonTrainer(
          key: key,
        ),
        verticalSpaceSmall,
        CommonTrainer(
          key: key,
        ),
        verticalSpaceSmall,
        CommonTrainer(
          key: key,
        )
      ],
    );
  }
}
