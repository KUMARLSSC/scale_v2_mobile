import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Employer/employer_viewmodel.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/employer_candidate_profile_widget.dart';
import 'package:scaleindia/widgets/employer_news_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

class Employer extends StatelessWidget {
  const Employer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployerViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
              title: 'Employer',
              leadingIcon: Icon(
                Icons.menu_sharp,
                color: Colors.black,
              ),
              onBackPressed: () => model.navigateToEmployerDrawer,
              action: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: blackTextColor,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: blackTextColor,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
              ],
              form: ConnectionCheck(
                child: ListView(
                  children: [
                    //search bar
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 8),
                      child: Container(
                        width: double.infinity,
                        height: 7.h,
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
                              hintText: "search",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    // Line
                    Divider(),
                    //popular Magzines
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "POPULAR MAGZINES",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff0065ff),
                              fontSize: 10.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: model.navigateToMagzine,
                            child: Container(
                              width: 20.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/magzine1.png'))),
                            ),
                          ),
                          Container(
                            width: 20.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/magzine1.png'))),
                          ),
                          Container(
                            width: 20.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/magzine1.png'))),
                          ),
                          Container(
                            width: 20.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/magzine1.png'))),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Divider(),
                    //candidate
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Candidate",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff0065ff),
                              fontSize: 10.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        "Related  for your Job Requirement and near by location",
                        style: TextStyle(
                          color: Color(0xff5f5555),
                          fontSize: 7.sp,
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    //Candidate profile
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EmployerCandidateProfileWidget(
                            key: key,
                          ),
                          EmployerCandidateProfileWidget(
                            key: key,
                          ),
                          EmployerCandidateProfileWidget(
                            key: key,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 17, right: 17, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "News",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xff0065ff),
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 8),
                      child: Row(
                        children: [
                          EmployerNewsWidget(key: key),
                        ],
                      ),
                    ),
                    verticalSpaceLarge
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => EmployerViewModel());
  }
}
