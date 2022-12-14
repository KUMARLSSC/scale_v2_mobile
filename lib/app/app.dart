import 'package:scaleindia/Core/main_auth.dart';
import 'package:scaleindia/services/api_service.dart';
import 'package:scaleindia/services/enivronmet_service.dart';
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
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    CupertinoRoute(page: AssessmentBatchMap),
    CupertinoRoute(page: AssessmentSOP),
    CupertinoRoute(page: PracticalAssessment),
    CupertinoRoute(page: PracticalMark),
    CupertinoRoute(page: CheckMarks),
    CupertinoRoute(page: AssessmentBatch),
    CupertinoRoute(page: BatchCandidates),
    CupertinoRoute(page: SSDMCreateBatch),
    CupertinoRoute(page: CreateSOP),
    CupertinoRoute(page: TPCreateBatch),
    CupertinoRoute(page: TPCreateSop),
    CupertinoRoute(page: AssignTrainer),
    CupertinoRoute(page: AddCandidates),
    CupertinoRoute(page: TrainerBatch),
    CupertinoRoute(page: Magzine),
    CupertinoRoute(page: EmployerDrawer),
    CupertinoRoute(page: OnBoarding),
    CupertinoRoute(page: Email),
    CupertinoRoute(page: Password),
    CupertinoRoute(page: Candidate),
    CupertinoRoute(page: Assessor),
    CupertinoRoute(page: Trainer),
    CupertinoRoute(page: TrainingPartner),
    CupertinoRoute(page: SSDM),
    CupertinoRoute(page: Employer),
    CupertinoRoute(page: PublicAssessmentWelcome),
    CupertinoRoute(page: AssessmentRulesCondition),
    CupertinoRoute(page: UploadImageAadhar),
    CupertinoRoute(page: TheoryAssessmentInstruction),
    CupertinoRoute(page: TheoryAssessment),
    CupertinoRoute(page: Summary),
    CupertinoRoute(page: Congratulations),
    CupertinoRoute(page: ELearning),
    CupertinoRoute(page: UserRoleSelecting),
    CupertinoRoute(page: CandidateRegistration),
    CupertinoRoute(page: TrainerRegistration),
    CupertinoRoute(page: TrainingPartnerRegistration),
    CupertinoRoute(page: SSDMRegistration),
    CupertinoRoute(page: AssessorRegistration),
    CupertinoRoute(page: EmployerRegistration),
    CupertinoRoute(page: Scorm),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: EnvironmentService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: MainAuthentication),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
