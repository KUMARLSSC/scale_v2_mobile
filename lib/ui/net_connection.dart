import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:scaleindia/constants/image_shared.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:sizer/sizer.dart';

class ConnectionCheck extends StatelessWidget {
  final Widget? child;
  const ConnectionCheck({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(
      key: key,
      builder: (BuildContext context) {
        return OfflineBuilder(
          key: key,
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            final bool connected = connectivity != ConnectivityResult.none;
            return Scaffold(
              key: key,
              body: connected
                  ? child
                  : Column(
                      children: [
                        Container(
                          height: 40.h,
                          padding: EdgeInsets.only(top: 20.sp),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(conncetionCheck),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpaceLarge,
                        verticalSpaceLarge,
                        verticalSpaceLarge,
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Oops!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.sp,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'No Internet Connection Found.Please Check Your Connection.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                        ),
                      ],
                    ),
            );
          },
          child: child,
        );
      },
    );
  }
}
