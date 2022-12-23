import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({super.key});

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Center(
          child: Text("Pesan"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Ini Pesan Toast 1',
                  backgroundColor: Colors.amber.withOpacity(0.5),
                  textColor: Colors.black,
                  gravity: ToastGravity.TOP,
                );
              },
              child: const Text('Toast 1'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Toast Material'),
                    content: const Text('Pertanyaan?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Toast 2 - Material '),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text('Toast Cupertino'),
                    content: const Text('Pertanyaan?'),
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('No'),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Toast 2 - Cupertino'),
            ),
          ],
        ),
      ),
    );
  }
}
