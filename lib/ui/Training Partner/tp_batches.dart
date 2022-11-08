import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/SSDM/ssdm_viewmodel.dart';
import 'package:scaleindia/widgets/batch_widget.dart';
import 'package:scaleindia/widgets/ssdm_batch_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class TPBatches extends StatelessWidget {
  const TPBatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SSDMViewModel>.reactive(
        builder: (context, model, child) => BatchTab(
              key: key,
              text1: 'Assigned',
              text2: 'Not Assigned',
              onPressed: () {},
              searchBar: Container(
                width: double.infinity,
                height: 6.5.h,
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
                      SSDMBatchWidget(
                        key: key,
                        tp: true,
                        tpText: 'By You',
                        text1: 'Trainer Name',
                        color1: Color(0xff000aff),
                        text2: 'Accepted',
                        color2: Color(0xff33c530),
                      ),
                      verticalSpaceMedium,
                      SSDMBatchWidget(
                        key: key,
                        tp: true,
                        tpText: 'By SSDM',
                        text1: 'Trainer Name',
                        color1: Color(0xff000aff),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      SSDMBatchWidget(
                        key: key,
                        tp: true,
                        tpText: 'By SSDM',
                        text1: 'Not Assigned',
                        color1: Color(0xffcc0505),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                      ),
                      SSDMBatchWidget(
                        key: key,
                        tp: true,
                        tpText: 'By You',
                        text1: 'Not Assigned',
                        color1: Color(0xffcc0505),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => SSDMViewModel());
  }
}
