import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_app_project/bloc/studentapp_bloc.dart';
// import 'package:student_app_project/bloc/studentapp_bloc.dart';
// import 'package:student_app_project/db/functions/db_functions.dart';
import 'package:student_app_project/db/model/data_model.dart';
import 'package:student_app_project/screen/home/widgets/list_student_Widget.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({
    Key? key,
    // required this.passValue01,
    required this.index,
    required this.data,
  }) : super(key: key);

  final StudentModel data;
  final int index;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  late final _nameController = TextEditingController(text: widget.data.name);

  late final _ageController = TextEditingController(text: widget.data.age);

  late final _numController = TextEditingController(text: widget.data.num);

  String? imagepath;
  void initstate() async {
    super.initState();
    _nameController.text = widget.data.name;
    _ageController.text = widget.data.age;
    _numController.text = widget.data.num;
  }

  // Future<void> StudentAddBtn(int index) async {
  //   final _name = _nameController.text.trim();
  //   final _age = _ageController.text.trim();
  //   final _number = _numController.text.trim();
  //   // final _image = imagePath;

  //   if (_name.isEmpty || _age.isEmpty || _number.isEmpty) {
  //     return;
  //   }
  //   print('$_name $_age $_number');

  //   final _students = StudentModel(
  //     id: index,
  //     name: _name,
  //     age: _age,
  //     num: _number,
  //     image: imagepath ?? widget.data.image,
  //   );
  //   final studentDataB = await Hive.openBox<StudentModel>('student_db1');
  //   studentDataB.putAt(index, _students);
  //   getAllStudents();
  // }

  Future<void> takePhoto() async {
    // ignore: non_constant_identifier_names
    final PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        imagepath = PickedFile.path;
      });
    }
  }

  Widget elavatedbtn() {
    return ElevatedButton.icon(
      onPressed: () {
        final student = StudentModel(
            name: _nameController.text,
            age: _ageController.text,
            num: _numController.text,
            image: widget.data.image);

        context
            .read<StudentappBloc>()
            .add(UpdateSpecificstudentData(student, widget.index));
        log(_nameController.toString());
        // StudentAddBtn(widget.index);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const ListStudentWidget()),
            (route) => false);
      },
      icon: const Icon(Icons.update_rounded),
      label: const Text('Update'),
    );
  }

  Widget textFieldName({
    required TextEditingController myController,
    required String hintName,
  }) {
    return TextFormField(
      // initialValue: widget.passValueProfile.name,
      autofocus: false,
      controller: myController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: hintName,
      ),
      // initialValue: 'hintName',
    );
  }

  Widget textFieldNum({
    required TextEditingController myController,
    required String hintName,
  }) {
    return TextFormField(
      autofocus: false,
      controller: myController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: hintName,
      ),
      keyboardType: TextInputType.number,
      // initialValue: 'hintName',
    );
  }

  Widget dpImage() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: imagepath == null
              ? FileImage(File(widget.data.image))
              : FileImage(File(imagepath ?? widget.data.image)),
        ),
        Positioned(
            bottom: 10,
            right: 25,
            child: InkWell(
                child: const Icon(
                  Icons.add_a_photo_rounded,
                  size: 30,
                ),
                onTap: () {
                  takePhoto();
                })),
      ],
    );
  }

  Widget szdBox = const SizedBox(height: 20);

  //build======================================================================
  // Future<void> keyBoard(keyboard) async {
  //   TextInputType.number;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              dpImage(),
              szdBox,
              textFieldName(
                myController: _nameController,
                hintName: widget.data.name,
              ),
              szdBox,
              textFieldNum(
                  myController: _ageController, hintName: widget.data.age),
              szdBox,
              textFieldNum(
                  myController: _numController, hintName: widget.data.num),
              szdBox,
              elavatedbtn(),
            ]),
          ),
        ));
  }
}
