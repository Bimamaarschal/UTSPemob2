import 'package:flutter/material.dart';
import 'package:flutter_application_tugas1_bimamaarschal/widgets/custom_button.dart';
import 'package:intl/intl.dart';

class DatePage extends StatefulWidget {
  const DatePage({super.key});

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');

  void _showDatePicker(context) async {
    final datePick = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: _selectedDate.subtract(const Duration(days: 30)),
      lastDate: DateTime(_selectedDate.year + 1),
    );

    if (datePick != null) {
      setState(() {
        _selectedDate = datePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Acara Kampus"),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Tanggal : ${_dateFormat.format(_selectedDate)}'),
              const SizedBox(
                width: 10,
              ),
              CustomButton(
                text: 'Date Picker',
                onPressed: () {
                  _showDatePicker(context);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
