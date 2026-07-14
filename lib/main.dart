import 'package:flutter/material.dart';

void main() {
  runApp(const EdosApp());
}

class EdosApp extends StatelessWidget {
  const EdosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDOS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF09090B),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7C4DFF),
          brightness: Brightness.dark,
        ),
      ),
      home: const EdosShell(),
    );
  }
}

class EdosShell extends StatefulWidget {
  const EdosShell({super.key});

  @override
  State<EdosShell> createState() => _EdosShellState();
}

class _EdosShellState extends State<EdosShell> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    EdosHomePage(),
    PlaceholderPage(
      icon: Icons.video_library_outlined,
      title: 'Projects',
      subtitle: 'Your EDOS projects will appear here.',
    ),
    PlaceholderPage(
      icon: Icons.auto_awesome,
      title: 'AI Studio',
      subtitle: 'Create faster with EDOS AI.',
    ),
    PlaceholderPage(
      icon: Icons.widgets_outlined,
      title: 'Assets',
      subtitle: 'Effects, fonts, stickers and templates.',
    ),
    PlaceholderPage(
      icon: Icons.person_outline,
      title: 'Profile',
      subtitle: 'Manage your account and Premium+.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: const Color(0xFF111114),
        indicatorColor: const Color(0xFF7C4DFF),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_library_outlined),
            selectedIcon: Icon(Icons.video_library),
            label: 'Projects',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'AI Studio',
          ),
          NavigationDestination(
            icon: Icon(Icons.widgets_outlined),
            selectedIcon: Icon(Icons.widgets),
            label: 'Assets',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class EdosHomePage extends StatelessWidget {
  const EdosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 30),
            _buildHeroCard(context),
            const SizedBox(height: 30),
            const SectionTitle(
              title: 'Quick Create',
              action: 'View all',
            ),
            const SizedBox(height: 14),
            const Row(
              children: [
                Expanded(
                  child: QuickActionCard(
                    icon: Icons.movie_creation_outlined,
                    title: 'New Project',
                    subtitle: 'Start editing',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: QuickActionCard(
                    icon: Icons.auto_awesome,
                    title: 'AI Create',
                    subtitle: 'Create with AI',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const SectionTitle(
              title: 'AI Tools',
              action: 'Open Studio',
            ),
            const SizedBox(height: 14),
            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                AiToolChip(
                  icon: Icons.closed_caption_outlined,
                  label: 'Auto Captions',
                ),
                AiToolChip(
                  icon: Icons.graphic_eq,
                  label: 'Clean Audio',
                ),
                AiToolChip(
                  icon: Icons.wallpaper_outlined,
                  label: 'Remove BG',
                ),
                AiToolChip(
                  icon: Icons.image_outlined,
                  label: 'AI Thumbnail',
                ),
                AiToolChip(
                  icon: Icons.translate,
                  label: 'Translate',
                ),
                AiToolChip(
                  icon: Icons.hd_outlined,
                  label: 'Upscale',
                ),
              ],
            ),
            const SizedBox(height: 30),
            const SectionTitle(
              title: 'Recent Projects',
              action: 'See all',
            ),
            const SizedBox(height: 14),
            const EmptyProjectsCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF2962FF),
                Color(0xFF7C4DFF),
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'E',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'EDOS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'Edit Beyond Limits',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.notifications_none_rounded),
        ),
      ],
    );
  }

  Widget _buildHeroCard(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1B1F4B),
            Color(0xFF4A237A),
            Color(0xFF111114),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              '✦ EDOS AI COPILOT',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'What do you want\nto create today?',
            style: TextStyle(
              fontSize: 29,
              height: 1.08,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Describe your idea and let EDOS help build your edit.',
            style: TextStyle(
              color: Colors.white70,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 22),
          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('EDOS AI Copilot is coming next.'),
                ),
              );
            },
            icon: const Icon(Icons.auto_awesome),
            label: const Text('Create with AI'),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String action;

  const SectionTitle({
    super.key,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Text(
          action,
          style: const TextStyle(
            color: Color(0xFF9B7BFF),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class QuickActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const QuickActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF151519),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: const Color(0xFF9B7BFF),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class AiToolChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const AiToolChip({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF151519),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: const Color(0xFF00E5FF),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class EmptyProjectsCard extends StatelessWidget {
  const EmptyProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFF151519),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: const Column(
        children: [
          Icon(
            Icons.movie_filter_outlined,
            size: 42,
            color: Colors.white38,
          ),
          SizedBox(height: 12),
          Text(
            'No projects yet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Create your first video with EDOS.',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const PlaceholderPage({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 60,
                color: const Color(0xFF9B7BFF),
              ),
              const SizedBox(height: 18),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}