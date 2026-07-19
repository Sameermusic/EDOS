import 'package:flutter/material.dart';
import '../projects/project_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF09090B),

      appBar: AppBar(
        backgroundColor: const Color(0xFF09090B),
        elevation: 0,
        title: const Text(
          "EDOS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 18,
              child: Icon(Icons.person),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "${_greeting()}, Sameer 👋",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Edit Beyond Limits",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                hintText: "What do you want to create today?",
                prefixIcon: const Icon(Icons.auto_awesome),
                filled: true,
                fillColor: const Color(0xFF18181B),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 30),

            InkWell(
  borderRadius: BorderRadius.circular(22),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProjectPage(),
      ),
    );
  },
  child: _dashboardCard(
    icon: Icons.video_call_rounded,
    title: "New Project",
    subtitle: "Start editing your next masterpiece",
    color: Colors.blue,
  ),
),

            const SizedBox(height: 18),

            _dashboardCard(
              icon: Icons.smart_toy,
              title: "AI Studio",
              subtitle: "Generate videos using AI",
              color: Colors.deepPurple,
            ),

            const SizedBox(height: 30),

            const Text(
              "Recent Projects",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                color: const Color(0xFF18181B),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [

                  Icon(
                    Icons.folder_open,
                    size: 60,
                    color: Colors.white54,
                  ),

                  SizedBox(height: 12),

                  Text(
                    "No Projects Yet",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 6),

                  Text(
                    "Create your first project to begin editing.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dashboardCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        color: const Color(0xFF18181B),
        borderRadius: BorderRadius.circular(22),
      ),

      child: Row(
        children: [

          CircleAvatar(
            radius: 28,
            backgroundColor: color.withValues(alpha: 0.18),
            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
} 