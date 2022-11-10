import 'package:apiexample/providers/collegeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CollegeExample extends StatefulWidget {
  const CollegeExample({super.key});

  @override
  State<CollegeExample> createState() => _CollegeExampleState();
}

class _CollegeExampleState extends State<CollegeExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CollegeProvider>(context, listen: false).getCollegeValues();
  }

  @override
  Widget build(BuildContext context) {
    final CollegeData = Provider.of<CollegeProvider>(context);
    print('object${CollegeData.coll}');
    // print('object1${CollegeData.localdata}');
    print(CollegeData.col_data);
    print('orgdata${CollegeData.col_data!.name}');
    print('orgdata${CollegeData.col_data!.majors![0]}');
    print('orgdata${CollegeData.col_data!.majors![1]}');
    print('subdata${CollegeData.col_data!.subjects![0].subjectName}');

    return Scaffold(
        body: Column(
      children: [
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                leading: Text('${CollegeData.col_data!.name}'),
                title: Text('Subjects'),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Subjectname:${CollegeData.col_data!.subjects![0].subjectName}'),
                        Text(
                            'Teacher:${CollegeData.col_data!.subjects![0].teacher}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Subjectname:${CollegeData.col_data!.subjects![1].subjectName}'),
                        Text(
                            'Teacher:${CollegeData.col_data!.subjects![1].teacher}'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}