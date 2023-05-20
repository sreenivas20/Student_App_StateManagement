
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_project/bloc/studentapp_bloc.dart';
import 'package:student_app_project/db/model/data_model.dart';
import 'package:image_picker/image_picker.dart';

class AddStudentWidget extends StatefulWidget {
  const AddStudentWidget({super.key});

  @override
  State<AddStudentWidget> createState() => _AddStudentWidgetState();
}

class _AddStudentWidgetState extends State<AddStudentWidget> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();

  final TextEditingController _numController = TextEditingController();

  String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                CircleAvatar(
                  backgroundImage: imagepath == null
                      ? AssetImage('assets/pp3.jpg') as ImageProvider
                      : FileImage(File(imagepath!)),
                  radius: 75,
                ),
                Positioned(
                    bottom: 10,
                    right: 25,
                    child: InkWell(
                        child: const Icon(
                          Icons.add_a_photo_outlined,
                          size: 30,
                        ),
                        onTap: () {
                          takePhoto();
                        })),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(234, 236, 238, 2),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Name',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(234, 236, 238, 2),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Age',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _numController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(234, 236, 238, 2),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Phone Number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton.icon(
              onPressed: () {
                BlocProvider.of<StudentappBloc>(context).add(AddStudentData( 
                    StudentModel(
                        name: _nameController.text,
                        age: _ageController.text,
                        num: _numController.text,
                        image: imagepath!)));

                  Navigator.of(context).pop();
                // }
              },
              icon: const Icon(Icons.add),
              label: Text('Add Student'),
            )
          ],
        ),
      ),
    );
  }

 

  Future<void> takePhoto() async {
    final PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        imagepath = PickedFile.path;
      });
    }
  }
}
