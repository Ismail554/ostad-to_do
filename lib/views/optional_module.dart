import 'package:flutter/material.dart';

class ModuleSettingScreen extends StatefulWidget {
  const ModuleSettingScreen({Key? key}) : super(key: key);

  @override
  State<ModuleSettingScreen> createState() => _ModuleSettingScreenState();
}

class _ModuleSettingScreenState extends State<ModuleSettingScreen> {
  String selectedOption1 = 'GLACIERS';
  String selectedOption2 = 'GLACIERS';
  String selectedOption3 = 'HHRI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () {},
        ),
        title: const Text(
          'Module Setting',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Your Optional Module',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),

            // First toggle group
            CustomToggleButton(
              option1: 'COASTS',
              option2: 'GLACIERS',
              selectedOption: selectedOption1,
              onChanged: (value) {
                setState(() {
                  selectedOption1 = value;
                });
              },
            ),

            const SizedBox(height: 16),

            // Second toggle group
            CustomToggleButton(
              option1: 'GLACIERS',
              option2: 'REGENERATING\nPLACE',
              selectedOption: selectedOption2,
              onChanged: (value) {
                setState(() {
                  selectedOption2 = value;
                });
              },
            ),

            const SizedBox(height: 16),

            // Third toggle group
            CustomToggleButton(
              option1: 'MIGRATION',
              option2: 'HHRI',
              selectedOption: selectedOption3,
              onChanged: (value) {
                setState(() {
                  selectedOption3 = value;
                });
              },
            ),

            const Spacer(),

            // Save button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4D9EFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Save Module',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class CustomToggleButton extends StatelessWidget {
  final String option1;
  final String option2;
  final String selectedOption;
  final ValueChanged<String> onChanged;

  const CustomToggleButton({
    Key? key,
    required this.option1,
    required this.option2,
    required this.selectedOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onChanged(option1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedOption == option1
                          ? const Color(0xFF4D9EFF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      option1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: selectedOption == option1
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onChanged(option2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedOption == option2
                          ? const Color(0xFF4D9EFF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      option2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: selectedOption == option2
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
