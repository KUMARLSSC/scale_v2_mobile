// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaleindia/ui/Assessor/assessment_batch.dart';
import 'package:scaleindia/ui/Assessor/assessment_batch_map.dart';
import 'package:scaleindia/ui/Assessor/assessor.dart';
import 'package:scaleindia/ui/Assessor/batch_candidates.dart';
import 'package:scaleindia/ui/Assessor/check_marks.dart';
import 'package:scaleindia/ui/Assessor/practical_assessment.dart';
import 'package:scaleindia/ui/Assessor/practical_mark.dart';
import 'package:scaleindia/ui/Assessor/sops.dart';
import 'package:scaleindia/ui/Authentication/email.dart';
import 'package:scaleindia/ui/Authentication/password.dart';
import 'package:scaleindia/ui/Candidate/assessment_rules_condition.dart';
import 'package:scaleindia/ui/Candidate/candidate.dart';
import 'package:scaleindia/ui/Candidate/congratulations.dart';
import 'package:scaleindia/ui/Candidate/public_assessment_welcome.dart';
import 'package:scaleindia/ui/Candidate/summary.dart';
import 'package:scaleindia/ui/Candidate/theory_assessment.dart';
import 'package:scaleindia/ui/Candidate/theory_assessment_instruction.dart';
import 'package:scaleindia/ui/Candidate/upload_img_aad.dart';
import 'package:scaleindia/ui/E-learning/e-learning.dart';
import 'package:scaleindia/ui/Employer/employer.dart';
import 'package:scaleindia/ui/Employer/employer_drawer.dart';
import 'package:scaleindia/ui/Employer/magzine.dart';
import 'package:scaleindia/ui/OnBoarding/onBoarding.dart';
import 'package:scaleindia/ui/Registration/registration_Employer.dart';
import 'package:scaleindia/ui/Registration/registration_assessor.dart';
import 'package:scaleindia/ui/Registration/registration_candidate.dart';
import 'package:scaleindia/ui/Registration/registration_ssdm.dart';
import 'package:scaleindia/ui/Registration/registration_trainer.dart';
import 'package:scaleindia/ui/Registration/registration_trainingpartner.dart';
import 'package:scaleindia/ui/Registration/user_role_selecting.dart';
import 'package:scaleindia/ui/SSDM/create_batch.dart';
import 'package:scaleindia/ui/SSDM/ssdm_main.dart';
import 'package:scaleindia/ui/Scorm/scorm.dart';
import 'package:scaleindia/ui/Splash/splash.dart';
import 'package:scaleindia/ui/Trainer/trainer.dart';
import 'package:scaleindia/ui/Trainer/trainer_batch.dart';
import 'package:scaleindia/ui/Training%20Partner/assign_trainer.dart';
import 'package:scaleindia/ui/Training%20Partner/tp_create_batch.dart';
import 'package:scaleindia/ui/Training%20Partner/tp_create_sop.dart';
import 'package:scaleindia/ui/Training%20Partner/training_partner.dart';
import 'package:scaleindia/widgets/add_candidate_widget.dart';
import 'package:scaleindia/widgets/create_sop.dart';
import 'package:stacked/stacked.dart';

class Routes {
  static const String splashView = '/';
  static const String assessmentBatchMap = '/assessmentBatchMap';
  static const String assessmentSOP = '/assessmentSOP';
  static const String practicalAssessment = '/practicalAssessment';
  static const String practicalMark = '/practicalMark';
  static const String checkMarks = '/checkMarks';
  static const String assessmentBatch = '/assessmentBatch';
  static const String batchCandidates = '/batchCandidates';
  static const String ssdmCreateBatch = '/ssdmCreateBatch';
  static const String createSOP = '/createSOP';
  static const String tpCreateBatch = '/tpCreateBatch';
  static const String tpcreateSOP = '/tpcreateSOP';
  static const String assignTrainer = '/assignTrainer';
  static const String addCandidateToBatch = '/addCandidateToBatch';
  static const String trainerBatch = '/trainerBatch';
  static const String magzine = '/magzine';
  static const String employerDrawer = '/employerDrawer';
  static const String onBoarding = '/onBoarding';
  static const String email = '/email';
  static const String password = '/password';
  static const String candidate = '/candidate';
  static const String assessor = '/assessor';
  static const String ssdm = '/ssdm';
  static const String trainer = '/trainer';
  static const String trainingPartner = '/trainingPartner';
  static const String employer = '/employer';
  static const String publicAssessmentWelcome = '/publicAssessmentWelcome';
  static const String assessmentRulesCondition = '/assessmentRulesCondition';
  static const String uploadImageAadhar = '/uploadImageAadhar';
  static const String theoryAssessmentInstruction =
      '/theoryAssessmentInstruction';
  static const String theoryAssessment = '/theoryAssessment';
  static const String summary = '/summary';
  static const String congratulations = '/congratulations';
  static const String elearning = '/elearning';
  static const String userRoleSelecting = '/userRoleSelecting';
  static const String candidateRegistration = '/candidateRegistration';
  static const String trainerRegistration = '/trainerRegistration';
  static const String trainingPartnerRegistration =
      '/trainingPartnerRegistration';
  static const String assessorRegistration = '/assessorRegistration';
  static const String ssdmRegistration = '/ssdmRegistration';
  static const String employerRegistration = '/employerRegistration';
  static const String scorm = '/scorm';
  static const all = <String>{
    splashView,
    assessmentBatchMap,
    assessmentSOP,
    practicalAssessment,
    practicalMark,
    checkMarks,
    assessmentBatch,
    batchCandidates,
    ssdmCreateBatch,
    tpCreateBatch,
    tpcreateSOP,
    createSOP,
    assignTrainer,
    addCandidateToBatch,
    trainerBatch,
    magzine,
    employerDrawer,
    onBoarding,
    email,
    password,
    candidate,
    assessor,
    trainer,
    trainingPartner,
    ssdm,
    employer,
    publicAssessmentWelcome,
    assessmentRulesCondition,
    uploadImageAadhar,
    theoryAssessmentInstruction,
    theoryAssessment,
    summary,
    congratulations,
    elearning,
    userRoleSelecting,
    candidateRegistration,
    scorm
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashPage),
    RouteDef(Routes.assessmentBatchMap, page: AssessmentBatchMap),
    RouteDef(Routes.assessmentSOP, page: AssessmentSOP),
    RouteDef(Routes.practicalAssessment, page: PracticalAssessment),
    RouteDef(Routes.practicalMark, page: PracticalMark),
    RouteDef(Routes.checkMarks, page: CheckMarks),
    RouteDef(Routes.assessmentBatch, page: AssessmentBatch),
    RouteDef(Routes.batchCandidates, page: BatchCandidates),
    RouteDef(Routes.ssdmCreateBatch, page: SSDMCreateBatch),
    RouteDef(Routes.createSOP, page: CreateSOP),
    RouteDef(Routes.tpCreateBatch, page: TPCreateBatch),
    RouteDef(Routes.tpcreateSOP, page: TPCreateSop),
    RouteDef(Routes.assignTrainer, page: AssignTrainer),
    RouteDef(Routes.addCandidateToBatch, page: AddCandidates),
    RouteDef(Routes.trainerBatch, page: TrainerBatch),
    RouteDef(Routes.magzine, page: Magzine),
    RouteDef(Routes.employerDrawer, page: EmployerDrawer),
    RouteDef(Routes.onBoarding, page: OnBoarding),
    RouteDef(Routes.email, page: Email),
    RouteDef(Routes.password, page: Password),
    RouteDef(Routes.candidate, page: Candidate),
    RouteDef(Routes.assessor, page: Assessor),
    RouteDef(Routes.trainer, page: Trainer),
    RouteDef(Routes.ssdm, page: SSDM),
    RouteDef(Routes.trainingPartner, page: TrainingPartner),
    RouteDef(Routes.employer, page: Employer),
    RouteDef(Routes.publicAssessmentWelcome, page: PublicAssessmentWelcome),
    RouteDef(Routes.assessmentRulesCondition, page: AssessmentRulesCondition),
    RouteDef(Routes.uploadImageAadhar, page: UploadImageAadhar),
    RouteDef(Routes.theoryAssessmentInstruction,
        page: TheoryAssessmentInstruction),
    RouteDef(Routes.theoryAssessment, page: TheoryAssessment),
    RouteDef(Routes.summary, page: Summary),
    RouteDef(Routes.congratulations, page: Congratulations),
    RouteDef(Routes.elearning, page: ELearning),
    RouteDef(Routes.userRoleSelecting, page: UserRoleSelecting),
    RouteDef(Routes.candidateRegistration, page: CandidateRegistration),
    RouteDef(Routes.trainerRegistration, page: TrainerRegistration),
    RouteDef(Routes.trainingPartnerRegistration,
        page: TrainingPartnerRegistration),
    RouteDef(Routes.ssdmRegistration, page: SSDMRegistration),
    RouteDef(Routes.assessorRegistration, page: AssessorRegistration),
    RouteDef(Routes.employerRegistration, page: EmployerRegistration),
    RouteDef(Routes.scorm, page: Scorm),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    AssessmentBatchMap: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssessmentBatchMap(),
        settings: data,
      );
    },
    AssessmentSOP: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssessmentSOP(),
        settings: data,
      );
    },
    PracticalAssessment: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PracticalAssessment(),
        settings: data,
      );
    },
    PracticalMark: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PracticalMark(),
        settings: data,
      );
    },
    CheckMarks: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CheckMarks(),
        settings: data,
      );
    },
    AssessmentBatch: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssessmentBatch(),
        settings: data,
      );
    },
    BatchCandidates: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => BatchCandidates(),
        settings: data,
      );
    },
    SSDMCreateBatch: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SSDMCreateBatch(),
        settings: data,
      );
    },
    CreateSOP: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateSOP(),
        settings: data,
      );
    },
    TPCreateBatch: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TPCreateBatch(),
        settings: data,
      );
    },
    TPCreateSop: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TPCreateSop(),
        settings: data,
      );
    },
    AssignTrainer: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssignTrainer(),
        settings: data,
      );
    },
    AddCandidates: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AddCandidates(),
        settings: data,
      );
    },
    TrainerBatch: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TrainerBatch(),
        settings: data,
      );
    },
    Magzine: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Magzine(),
        settings: data,
      );
    },
    EmployerDrawer: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EmployerDrawer(),
        settings: data,
      );
    },
    OnBoarding: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OnBoarding(),
        settings: data,
      );
    },
    Email: (data) {
      var args = data.getArgs<EmailViewArguments>(
        orElse: () => EmailViewArguments(),
      );

      return CupertinoPageRoute<dynamic>(
        builder: (context) => Email(
          key: args.key,
        ),
        settings: data,
      );
    },
    Password: (data) {
      var args = data.getArgs<PasswordArguments>(
        orElse: () => PasswordArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Password(
          key: args.key,
        ),
        settings: data,
      );
    },
    Candidate: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Candidate(),
        settings: data,
      );
    },
    Assessor: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Assessor(),
        settings: data,
      );
    },
    TrainingPartner: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TrainingPartner(),
        settings: data,
      );
    },
    SSDM: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SSDM(),
        settings: data,
      );
    },
    Trainer: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Trainer(),
        settings: data,
      );
    },
    Employer: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Employer(),
        settings: data,
      );
    },
    PublicAssessmentWelcome: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PublicAssessmentWelcome(),
        settings: data,
      );
    },
    AssessmentRulesCondition: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssessmentRulesCondition(),
        settings: data,
      );
    },
    UploadImageAadhar: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => UploadImageAadhar(),
        settings: data,
      );
    },
    TheoryAssessmentInstruction: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TheoryAssessmentInstruction(),
        settings: data,
      );
    },
    TheoryAssessment: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TheoryAssessment(),
        settings: data,
      );
    },
    Summary: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Summary(),
        settings: data,
      );
    },
    Congratulations: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Congratulations(),
        settings: data,
      );
    },
    ELearning: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ELearning(),
        settings: data,
      );
    },
    UserRoleSelecting: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => UserRoleSelecting(),
        settings: data,
      );
    },
    CandidateRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CandidateRegistration(),
        settings: data,
      );
    },
    TrainingPartnerRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TrainingPartnerRegistration(),
        settings: data,
      );
    },
    SSDMRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SSDMRegistration(),
        settings: data,
      );
    },
    TrainerRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TrainerRegistration(),
        settings: data,
      );
    },
    AssessorRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AssessorRegistration(),
        settings: data,
      );
    },
    EmployerRegistration: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => EmployerRegistration(),
        settings: data,
      );
    },
    Scorm: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Scorm(),
        settings: data,
      );
    },
  };
}

/// Login arguments holder class
class PasswordArguments {
  final Key? key;
  PasswordArguments({
    this.key,
  });
}

/// Email arguments holder class
class EmailViewArguments {
  final Key? key;
  EmailViewArguments({this.key});
}
