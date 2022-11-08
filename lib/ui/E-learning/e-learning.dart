import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/E-learning/e-learning_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class ELearning extends StatelessWidget {
  const ELearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ELearningViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'E-Learning',
            leadingIcon: Icon(
              Icons.arrow_back_ios,
              color: blackTextColor,
              size: 18.sp,
            ),
            action: [
              Icon(
                Icons.search,
                color: blackTextColor,
                size: 18.sp,
              ),
              horizontalSpaceLarge
            ],
            form: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 30.w,
                      height: 15.2.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff9bd5d8),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/footwear.png'))),
                    ),
                  ),
                  Text(
                    "Foot Wear",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.sp,
                        fontFamily: 'Ubuntu'),
                  ),
                  Text(
                    "Opertor Moulding",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff0a0707),
                        fontSize: 18.sp,
                        letterSpacing: 1.92,
                        fontFamily: 'Ubuntu'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        color: Color(0xff817070),
                        size: 10.sp,
                      ),
                      Text(
                        "100",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff817070),
                          fontSize: 10.sp,
                        ),
                      ),
                      horizontalSpaceRegular,
                      Row(
                        children: [
                          Text(
                            "4.3",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff3d3939),
                              fontSize: 10.sp,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 17.sp,
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    "10 lessons",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff857c7c),
                      fontSize: 9.sp,
                    ),
                  ),
                ],
              ),
            )),
        viewModelBuilder: () => ELearningViewModel());
  }
}
