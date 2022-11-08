import 'package:flutter/material.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class CommonTrainer extends StatelessWidget {
  const CommonTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: GestureDetector(
        onTap: () => {},
        child: Container(
          width: 342.w,
          height: 10.9.h,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xffdac4c4),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                key: key,
                child: Image(
                  image: AssetImage('assets/images/profile.gif'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                    CustomText.candidateName('Candidate Name'),
                    CustomText.candidateIDText('ID - 123456789'),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffffce31),
                    size: 15.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffffce31),
                    size: 15.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffffce31),
                    size: 15.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffffce31),
                    size: 15.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffffce31),
                    size: 15.sp,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
