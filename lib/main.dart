import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:impty_project/app/my_app.dart';
import 'package:impty_project/app/my_app_controller.dart';
import 'package:impty_project/core/Data/repositories/shared_prefernce_repository.dart';
import 'package:impty_project/core/services/connectivity_service.dart';
import 'package:impty_project/core/services/location_service.dart';
import 'package:impty_project/core/services/notifction_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//!--late:راح انشأ لاحقا
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  });
  Get.put(SharedPreferencesRepository());
  // Get.put(CartService());
  Get.put(ConnectivityService());
  Get.put(LocationService());
  Get.put(MyAppController());

  try {
    await Firebase.initializeApp(
        // options: DefaultFirebaseOptions.currentPlatform,
        );

    Get.put(NotificationService());
  } catch (e) {
    print(e);
  }

  runApp(const MyApp());
}
//!--void: returnمابترجع قيمة ,اي شي بدو يرجع قيمة لازم يكون فيه
//!-future:دلالة انه الكومبايلر بدو يوقف يستنى شي
//!--SharedPreferences:بتسمح اخزن بيانات عذاكرة التخزين المحلي للجهاز ضمن ملفات التطبيق حتى لو تسكر
//!--بقدر خزن قيمة ما بتتغير ومابتتأثر إذا فتحنا التطبيق أكتر من مرة
//!--حطينا هون لأن بيلزمني يكون جاهز قبل مايعمل رن للتطبيق
//!--getInstance: SharedPreferencesجديد من object كأني عم انشئ
