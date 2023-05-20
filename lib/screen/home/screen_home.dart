import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:student_app_project/db/functions/db_functions.dart';
// import 'package:student_app_project/screen/home/widgets/add_student_widget.dart';
import 'package:student_app_project/screen/home/widgets/list_student_Widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    
  
    return const Scaffold(
        body: SafeArea(
      child:
        
          ListStudentWidget(),
     
     
    ));
   
  }
}
