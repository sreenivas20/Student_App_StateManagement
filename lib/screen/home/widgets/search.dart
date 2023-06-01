import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_project/application/search/search_bloc.dart';
import 'package:student_app_project/screen/home/widgets/view_stdents.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _searchController,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        clearText();
                        context
                            .read<SearchBloc>()
                            .add(const ClearSearchEvent());
                      }),
                  filled: true,
                  fillColor: const Color.fromRGBO(234, 236, 238, 2),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'search',
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    BlocProvider.of<SearchBloc>(context)
                        .add(const ClearSearchEvent());
                  }
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchedStudentEvent(value));
                  // _searchStudent(value);
                  log(value.toString());
                },
              ),
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is SearchInitial) {
                    return const Center(
                      child: Text('Search somthing'),
                    );
                  } else if (state is Loaded) {
                    return ListView.builder(
                      itemCount: state.student.length,
                      itemBuilder: (context, index) {
                        // final data = studentList[index];
                        File img = File(state.student[index].image);
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: FileImage(img),
                            // studentDisplay[index].image.toString(),
                            radius: 22,
                          ),
                          title: Text(state.student[index].name),
                          // subtitle: Text(
                          //     '${studentDisplay[index]["age"].toString()} years old'),
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentView(
                                          index: index,
                                          student: state.student[index],
                                          // id: studentDisplay[index].id,
                                        )));
                          }),
                        );
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )
                  // : const Center(
                  //     child: Text(
                  //       'No match found',
                  //       style: TextStyle(fontSize: 20),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  )
            ],
          ),
        ),
      ),
    );
  }

  // void _searchStudent(String value) {
  void clearText() {
    _searchController.clear();
  }
}
