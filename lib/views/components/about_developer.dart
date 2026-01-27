import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperAboutScreen extends StatelessWidget {
  const DeveloperAboutScreen({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('About Developer'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Avatar
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 20),

            // Developer Name
            const Text(
              'Nishan Pradhan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Role
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),

            // Company
            const Text(
              'Working on Lunar I.T. Solution',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 40),

            // Social Links Section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Connect With Me',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),

            // Portfolio Link
            _buildSocialLink(
              icon: Icons.language,
              label: 'Portfolio',
              url: 'https://www.nishanpradhan.com.np/',
            ),

            // GitHub Link
            _buildSocialLink(
              icon: Icons.code,
              label: 'GitHub',
              url: 'https://github.com/Nishan-Pradhan06',
            ),

            // LinkedIn Link
            _buildSocialLink(
              icon: Icons.work,
              label: 'LinkedIn',
              url: 'https://www.linkedin.com/in/nishan-pradhan06/',
            ),

            const SizedBox(height: 40),

            // Footer
            const Divider(),
            const SizedBox(height: 16),
            Text(
              'Made with ❤️ in Flutter',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              '© ${DateTime.now().year} Nishan Pradhan',
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLink({
    required IconData icon,
    required String label,
    required String url,
  }) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Colors.blue),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
