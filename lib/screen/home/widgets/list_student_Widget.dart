import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_project/bloc/studentapp_bloc.dart';
//import 'package:flutter/src/widgets/container.dart';
// import 'package:student_app_project/db/functions/db_functions.dart';
import 'package:student_app_project/db/model/data_model.dart';
import 'package:student_app_project/screen/home/widgets/add_student_widget.dart';
import 'package:student_app_project/screen/home/widgets/search.dart';
import 'package:student_app_project/screen/home/widgets/update_student.dart';
import 'package:student_app_project/screen/home/widgets/view_stdents.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // getAllStudents();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 197, 244),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Student Info',
            style: TextStyle(fontSize: 26),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => SearchScreen()));
                },
                icon: const Icon(Icons.search)),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: BlocBuilder<StudentappBloc, StudentappState>(
            builder: (context, state) {
              if (state is StudentInitial) {
                context.read<StudentappBloc>().add(FetchAllData());
              }
              if (state is DisplayAllStudents) {
                if (state.students.isNotEmpty) {
                  return ListView.separated(
                    itemBuilder: (ctx, index) {
                      // final data = studentList[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, left: 15.0, top: 18),
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [Colors.purple, Colors.blue],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                state.students[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              subtitle: Text(state.students[index].age,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => StudentView(
                                              student: StudentModel(
                                                  name: state
                                                      .students[index].name,
                                                  age:
                                                      state.students[index].age,
                                                  num:
                                                      state.students[index].num,
                                                  image: state
                                                      .students[index].image),
                                              index: index,
                                            )));
                              },
                              leading: CircleAvatar(
                                backgroundImage: FileImage(
                                    File(state.students[index].image)),
                                radius: 30,
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UpdateScreen(
                                                      data: StudentModel(
                                                          name: state
                                                              .students[index]
                                                              .name,
                                                          age: state
                                                              .students[index]
                                                              .age,
                                                          num: state
                                                              .students[index]
                                                              .num,
                                                          image: state
                                                              .students[index]
                                                              .image),
                                                      index: index,
                                                    )));
                                      },
                                      icon: Icon(Icons.edit_document)),
                                  IconButton(
                                      onPressed: () {
                                        ///if (data.id != null) {
                                        deleteAlert(
                                            context, index, state.students);

                                        //   } else {
                                        //print('student id is null unable to delete');
                                        //  }
                                      },
                                      icon: const Icon(
                                        Icons.delete_outline,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const SizedBox();
                    },
                    itemCount: state.students.length,
                  );
                }
              }
              return const Center(
                child: Text("List is Empty"),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.black,
        focusColor: Colors.purple,
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddStudentWidget()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

deleteAlert(BuildContext context, index, student) {
  showDialog(
      context: context,
      builder: ((ctx) => AlertDialog(
            content: const Text('Are you sure you want to delete'),
            actions: [
              TextButton(
                  onPressed: () {
                    context
                        .read<StudentappBloc>()
                        .add(DeleteSpecificstudentData(student, index));
                    // deleteStudent(index);
                    Navigator.of(context).pop(ctx);
                  },
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                onPressed: () => Navigator.of(context).pop(ctx),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )));
}
