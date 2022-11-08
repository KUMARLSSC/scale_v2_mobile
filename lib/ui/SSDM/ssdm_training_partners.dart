import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/SSDM/ssdm_viewmodel.dart';
import 'package:scaleindia/widgets/batch_widget.dart';
import 'package:scaleindia/widgets/ssdm_batch_widget.dart';
import 'package:stacked/stacked.dart';

class SSDMTrainingPartners extends StatelessWidget {
  const SSDMTrainingPartners({Key? key}) : super(key: key);

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
                      SSDMBatchWidget(
                        text1: 'Trainer Name',
                        color1: Color(0xff000aff),
                        text2: 'Accepted',
                        color2: Color(0xff33c530),
                      ),
                      verticalSpaceTiny,
                      SSDMBatchWidget(
                        text1: 'Training Partner',
                        color1: Color(0xff000aff),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                      SSDMBatchWidget(
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
                        text1: 'Training Partner',
                        color1: Color(0xff000aff),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                        busy: true,
                      ),
                      SSDMBatchWidget(
                        text1: 'Training Partner',
                        color1: Color(0xff000aff),
                        text2: 'Pending',
                        color2: Color(0xffe31c1c),
                        busy: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => SSDMViewModel());
  }
}
