import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:sizer/sizer.dart';

class EmployerProfile extends StatelessWidget {
  const EmployerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
      title: 'Profile',
      leadingIcon: Icon(
        Icons.arrow_back_ios_new,
        color: blackTextColor,
        size: 28,
      ),
      folatingActionButtion: new FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      action: [
        Icon(
          Icons.more_vert,
          size: 28,
          color: blackTextColor,
        ),
        horizontalSpaceRegular
      ],
      form: Stack(
        key: key,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 14, right: 14),
            child: Container(
              width: 100.w,
              height: 45.h,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffaba8a8),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Color(0xfffffdfd),
              ),
            ),
          ),
          SafeArea(
              child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff908585),
                        child: Icon(
                          Icons.person,
                          color: whiteTextColor,
                          size: 100,
                        ),
                        radius: 60.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Icon(Icons.camera),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 30),
                        child: Container(
                          width: 10.w,
                          height: 2.5.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff080586),
                              width: 1,
                            ),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: Color(0xff080586),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Text(
                "Employer Name",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff0065ff),
                    fontSize: 18,
                    fontFamily: 'Ubuntu'),
              ),
              Divider(),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 143),
            child: TopTabBar(
              busy: true,
              length: 2,
              tabs: [
                Text(
                  "About",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 17,
                      fontFamily: 'Ubuntu'),
                ),
                Text(
                  "Basic Details",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 17,
                      fontFamily: 'Ubuntu'),
                )
              ],
              tabBarView: [
                //about tab
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.calendar_today),
                        Text(
                          "Est. Year :",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "1990",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.people),
                        Text(
                          "No. of Employees :",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        "Bio",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu'),
                      ),
                    ),
                    verticalSpaceTiny,
                    SizedBox(
                      width: 75.w,
                      height: 7.h,
                      child: Text(
                        "Leather Sector Skill Council (LSSC) aims to facilitate a skilled ecosystem in the leather industry through.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                //basic details tab
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.mail),
                        Text(
                          "Mail. ID :",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "abcd@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone_android),
                        Text(
                          "Phone   :",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "123456789",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu'),
                      ),
                    ),
                    verticalSpaceTiny,
                    SizedBox(
                      width: 75.w,
                      height: 7.h,
                      child: Text(
                        "HOUSE, 1st floor, GCV, 81, Nungambakkam High Rd, Nungambakkam, Chennai, Tamil Nadu 600034",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 10),
            child: TopTabBar(
              tabs: [
                Column(
                  children: [
                    Text(
                      "05",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 24,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 14,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 24,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Hired",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 14,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "05",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 24,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Jobs",
                      style: TextStyle(
                        color: Color(0xff908585),
                        fontSize: 14,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
              tabBarView: [
                CustomText.topTabText('Galary'),
                CustomText.topTabText('Hired'),
                CustomText.topTabText('Jobs')
              ],
              length: 3,
              busy: true,
            ),
          )
        ],
      ),
    );
  }
}
