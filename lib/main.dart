import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobank/login/auth_ctrl.dart';
import 'package:gobank/splashscreen.dart';
import 'package:gobank/utils/colornotifire.dart';
import 'package:provider/provider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     
  );
  Get.put(AuthCtrl());
  Get.lazyPut(()=>AuthCtrl());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ColorNotifire(),
          
        ),
        
      ],
      child: const GetMaterialApp(
        
        home: Splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
    
  );
}
