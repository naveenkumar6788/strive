
import 'package:flutter/material.dart';
import 'app_theme.dart'; // import your theme/colors/textstyles file
import 'settings_screen.dart'; // ✅ added import for SettingsScreen

class MyPitchesScreen extends StatelessWidget {
  const MyPitchesScreen({super.key});

  Widget _buildPitchCard({
    required String logo,
    required String title,
    required String subtitle,
    required String status,
    required Color statusColor,
    required int members,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.accent.withOpacity(0.4),
                ),
                child: Center(
                  child: Text(
                    logo,
                    style: AppTextStyles.cardTitle,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.cardTitle),
                    const SizedBox(height: 2),
                    Text(subtitle, style: AppTextStyles.cardSubtitle),
                    const SizedBox(height: 4),
                    Text(
                      status,
                      style: AppTextStyles.bodyText.copyWith(
                        color: statusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.people_alt_outlined,
                      size: 18, color: AppColors.subtitle),
                  const SizedBox(width: 4),
                  Text(
                    "$members",
                    style: AppTextStyles.bodyText.copyWith(
                      color: AppColors.subtitle,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Buttons row
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.backgroundTop,
                    foregroundColor: AppColors.heading,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("View/Edit Pitch"),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.poll_outlined,
                    color: AppColors.subtitle),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined,
                    color: AppColors.subtitle),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline,
                    color: AppColors.subtitle),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundTop,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundTop,
        title: Text(
          "My Pitches",
          style: AppTextStyles.pageTitle,
        ),
        elevation: 0,
        centerTitle: true,
        actions: [ // ✅ Added Settings button
          IconButton(
            icon: const Icon(Icons.settings, color: AppColors.heading),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildPitchCard(
                    logo: "NK",
                    title: "Tech Innovators Inc.",
                    subtitle: "Technology",
                    status: "Live",
                    statusColor: Colors.green,
                    members: 23,
                  ),
                  _buildPitchCard(
                    logo: "ES",
                    title: "Eco Solutions Ltd.",
                    subtitle: "Sustainability",
                    status: "Draft",
                    statusColor: Colors.red,
                    members: 5,
                  ),
                  _buildPitchCard(
                    logo: "HT",
                    title: "HealthTech Innovations",
                    subtitle: "Healthcare",
                    status: "Under Review",
                    statusColor: Colors.blueAccent,
                    members: 12,
                  ),
                  _buildPitchCard(
                    logo: "HT",
                    title: "HealthTech Innovations",
                    subtitle: "Healthcare",
                    status: "Under Review",
                    statusColor: Colors.blueAccent,
                    members: 12,
                  ),
                  _buildPitchCard(
                    logo: "HT",
                    title: "HealthTech Innovations",
                    subtitle: "Healthcare",
                    status: "Under Review",
                    statusColor: Colors.blueAccent,
                    members: 12,
                  ),
                  _buildPitchCard(
                    logo: "HI",
                    title: "HealthTech Innovations",
                    subtitle: "Healthcare",
                    status: "Under Review",
                    statusColor: Colors.blueAccent,
                    members: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New Pitch"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 203, 173),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
