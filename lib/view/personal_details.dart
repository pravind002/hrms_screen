// import 'package:flutter/material.dart';
// import 'package:hrms_screen/constants/colors.dart';

// class PersonalDetails extends StatelessWidget {
//   const PersonalDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: AppBar(
//         elevation: 20,
//         iconTheme: const IconThemeData(color: whiteColor),
//         shadowColor: blackColor,
//         backgroundColor: appBarColor,
//         centerTitle: true,
//         title: const Text('Employment Form'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MultiStepForm(),
//     );
//   }
// }
class MultiStepForm extends StatefulWidget {
  const MultiStepForm({Key? key}) : super(key: key);

  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  int currentStep = 0;
  List<Step> steps = [
    const Step(
      title: Text('Employee '),
      content: EmployeeForm(),
    ),
    const Step(
      title: Text('Contact '),
      content: ContactDetails(),
    ),
    const Step(
      title: Text('Bank '),
      content: BankDetails(),
    ),
  ];

  void next() {
    if (currentStep < steps.length - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void previous() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi-Step Form'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Stepper(
                currentStep: currentStep,
                
                steps: steps,
                type: StepperType.horizontal,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: steps[currentStep].content,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: previous,
                child: const Text('Previous'),
              ),
              ElevatedButton(
                onPressed: next,
                child: Text(currentStep == steps.length - 1 ? 'Submit' : 'Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Employee Form'),
        // Add employee form fields here
      ],
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact Details'),
        // Add contact details form fields here
      ],
    );
  }
}

class BankDetails extends StatelessWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bank Details'),
        // Add bank details form fields here
      ],
    );
  }
}
