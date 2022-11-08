import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'candidate_viewmodel.dart';

class CandidateProfile extends StatelessWidget {
  const CandidateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: ElevatedButton(onPressed: model.logout, child: Text('Logout')),
        ),
      ),
      viewModelBuilder: () => CandidateViewModel(),
    );
  }
}
