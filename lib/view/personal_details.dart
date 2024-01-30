import 'package:flutter/material.dart';
import 'package:hrms_screen/constants/colors.dart';
import 'package:hrms_screen/utils/custom_text_field.dart';

import '../utils/custom_drop_down.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 20,
        iconTheme: const IconThemeData(color: whiteColor),
        shadowColor: blackColor,
        backgroundColor: appBarColor,
        centerTitle: true,
        title: const Text('Employment Form'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(border: Border.all(color: blackColor)),
        child: Card(
          surfaceTintColor: whiteColor,
          elevation: 15,
          color: whiteColor,
          margin: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 1000,
                  // color: Colors.green,
                  child: Column(
                    children: [
                      const CustomTextField(
                          lable: 'Full Name (As per Aadhar card)'),
                      const Row(
                        children: [
                          Expanded(child: CustomTextField(lable: 'First Name')),
                          Expanded(
                              child: CustomTextField(lable: 'Middle Name')),
                          Expanded(child: CustomTextField(lable: 'Last Name')),
                        ],
                      ),
                      CustomDropDown(
                        label: 'Select an option',
                        selectedValue: 'Option 1',
                        dropdownItems: const [
                          'Option 1',
                          'Option 2',
                          'Option 3'
                        ],
                        onChanged: (value) {
                          print('Selected value: $value');
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

