import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final TextEditingController _nameController = TextEditingController();

  String _aspectRatio = "16:9";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Project Name",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: "Enter project name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Aspect Ratio",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            DropdownButton<String>(
              value: _aspectRatio,
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: "16:9",
                  child: Text("16:9 - Landscape"),
                ),
                DropdownMenuItem(
                  value: "9:16",
                  child: Text("9:16 - Portrait"),
                ),
                DropdownMenuItem(
                  value: "1:1",
                  child: Text("1:1 - Square"),
                ),
                DropdownMenuItem(
                  value: "4:5",
                  child: Text("4:5 - Instagram"),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _aspectRatio = value;
                  });
                }
              },
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Project '${_nameController.text}' created!",
                      ),
                    ),
                  );
                },
                child: const Text("Create Project"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}