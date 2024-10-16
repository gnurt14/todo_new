import 'package:flutter/material.dart';

class EditPage extends StatelessWidget{
  final String? taskTitle;
  final DateTime? taskDate;
  final String? taskDetail;
  const EditPage({super.key, required this.taskTitle, required this.taskDate, required this.taskDetail});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit task'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  controller: titleController..text = '$taskTitle',
                ),
                TextField(
                  maxLines: null,
                  controller: detailController..text = '$taskDetail',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text('Notification'),
                        content: Text(
                          'Edit task successfully',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Edit task",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}