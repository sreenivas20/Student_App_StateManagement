import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_project/bloc/studentapp_bloc.dart';
//import 'package:flutter/src/widgets/container.dart';
// import 'package:student_app_project/db/functions/db_functions.dart';
import 'package:student_app_project/db/model/data_model.dart';
import 'package:student_app_project/screen/home/widgets/add_student_widget.dart';
import 'package:student_app_project/screen/home/widgets/search.dart';
import 'package:student_app_project/screen/home/widgets/view_stdents.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // getAllStudents();
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Info'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
                      return ListTile(
                        title: Text(state.students[index].name),
                        subtitle: Text(state.students[index].age),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => StudentView(
                                        student: StudentModel(
                                            name: state.students[index].name,
                                            age: state.students[index].age,
                                            num: state.students[index].num,
                                            image: state.students[index].image),
                                        index: index,
                                      )));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              FileImage(File(state.students[index].image)),
                          radius: 30,
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              ///if (data.id != null) {
                              deleteAlert(context, index, state.students);

                              //   } else {
                              //print('student id is null unable to delete');
                              //  }
                            },
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            )),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const Divider();
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
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddStudentWidget()));
        },
        child: Icon(Icons.add),
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
