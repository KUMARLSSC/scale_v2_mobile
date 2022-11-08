import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/SSDM/ssdm_viewmodel.dart';
import 'package:scaleindia/widgets/batch_widget.dart';
import 'package:scaleindia/widgets/common_candidate.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class SSDMStudents extends StatelessWidget {
  const SSDMStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SSDMViewModel>.reactive(
        builder: (context, model, child) => BatchTab(
              text1: 'All',
              text2: 'New',
              onPressed: () {},
              searchBar: Container(
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
              tabBarView: TabBarView(
                children: <Widget>[
                  ListView(
                    children: [
                      CommonCandidate(
                        key: key,
                        busy: true,
                        common: Column(
                          children: [
                            Text(
                              "Batch",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Container(
                              width: 60,
                              height: 19,
                              alignment: Alignment.center,
                              child: Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff13ce1b),
                              ),
                            )
                          ],
                        ),
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        key: key,
                        busy: true,
                        common: Column(
                          children: [
                            Text(
                              "Batch",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Container(
                              width: 60,
                              height: 19,
                              alignment: Alignment.center,
                              child: Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff13ce1b),
                              ),
                            )
                          ],
                        ),
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        key: key,
                        busy: true,
                        common: Column(
                          children: [
                            Text(
                              "Batch",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Container(
                              width: 60,
                              height: 19,
                              alignment: Alignment.center,
                              child: Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff13ce1b),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      CommonCandidate(
                        key: key,
                        busy: true,
                        common: Column(
                          children: [
                            SizedBox(
                              width: 5.w,
                              height: 2.h,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/red_new.gif',
                                ),
                              ),
                            ),
                            Container(
                              width: 78,
                              height: 19,
                              alignment: Alignment.center,
                              child: Text(
                                "Not Assigned",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffe31c1c),
                              ),
                            )
                          ],
                        ),
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        key: key,
                        busy: true,
                        common: Column(
                          children: [
                            SizedBox(
                              width: 5.w,
                              height: 2.h,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/red_new.gif',
                                ),
                              ),
                            ),
                            Container(
                              width: 78,
                              height: 19,
                              alignment: Alignment.center,
                              child: Text(
                                "Not Assigned",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffe31c1c),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => SSDMViewModel());
  }
}
