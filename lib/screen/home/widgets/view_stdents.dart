import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:student_app_project/db/model/data_model.dart';

class StudentView extends StatelessWidget {
  final double coverHeight = 220;
  final double profileHeight = 170;

  const StudentView(
      {Key? key,
      // required this.passValue,
      // required this.passId,
      required this.student,
      required this.index})
      : super(key: key);

  // final StudentModel passValue;
  // final int passId;
  final StudentModel? student;
  final int index;

//functions or widgets========================================================
  Widget top() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(clipBehavior: Clip.none, children: [
      Container(margin: EdgeInsets.only(bottom: bottom), child: CoverImage()),
      Positioned(
        top: top,
        left: 130,
        child: ProfileImage(),
      ),
    ]);
  }

  Widget content() {
    return SizedBox(
      width: 200,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            ' ${student!.name}',
            style: const TextStyle(fontSize: 28, fontFamily: 'Ubuntu'),
          ),
          Text('Age : ${student!.age}',
              style: const TextStyle(fontSize: 18, color: Colors.grey)),
          Text('Number : ${student!.num}',
              style: const TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget CoverImage() => Container(
        color: const Color.fromRGBO(234, 236, 238, 2),
        width: double.infinity,
        height: coverHeight,
      );

  // ignore: non_constant_identifier_names
  Widget ProfileImage() => CircleAvatar(
        backgroundImage: FileImage(File(student!.image)),
        radius: profileHeight / 2,
      );

  // Widget floatbtn(BuildContext context) {
  //   return FloatingActionButton(
  //       onPressed: () {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => UpdateScreen(
  //                       passValueProfile: passValue,
  //                       index: passId,
  //                     )));
  //       },
  //       child: const Icon(Icons.edit_outlined));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.edit),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => UpdateScreen(
        //                   data: student!,
        //                   index: index,
        //                 )));
        //   },
        // ),
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          top(),
          content(),
        ]));
  }
}
