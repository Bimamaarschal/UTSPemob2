import 'package:flutter/material.dart';
import 'package:flutter_application_tugas1_bimamaarschal/widgets/custom_button.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  void _showTimePicker(context) async {
    final timePick = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );

    if (timePick != null) {
      setState(() {
        _selectedTime = timePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Mata Kuliah Tambahan"),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Time : ${_selectedTime.format(context)}'),
              const SizedBox(
                width: 10,
              ),
              CustomButton(
                text: 'Time Picker',
                onPressed: () {
                  _showTimePicker(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
