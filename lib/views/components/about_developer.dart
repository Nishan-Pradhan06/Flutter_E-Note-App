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
      backgroundColor: const Color(0xffF4FAFB),
      appBar: AppBar(
        title: const Text('About Developer'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xff0F766E), Color(0xff115E59)],
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xff0F766E), Color(0xff0D9488)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: const Color(0xff0F766E).withValues(alpha: 0.24),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 44,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 54,
                      color: Color(0xff0F766E),
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Nishan Pradhan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(color: Color(0xffD6FFF8), fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Lunar I.T. Solution',
                    style: TextStyle(color: Color(0xffC4F8F0), fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Connect With Me',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F172A),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildSocialLink(
                      icon: Icons.language,
                      label: 'Portfolio',
                      url: 'https://www.nishanpradhan.com.np/',
                    ),
                    _buildSocialLink(
                      icon: Icons.code_rounded,
                      label: 'GitHub',
                      url: 'https://github.com/Nishan-Pradhan06',
                    ),
                    _buildSocialLink(
                      icon: Icons.work_outline_rounded,
                      label: 'LinkedIn',
                      url: 'https://www.linkedin.com/in/nishan-pradhan06/',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Made with Flutter',
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
            const SizedBox(height: 6),
            Text(
              '© ${DateTime.now().year} Nishan Pradhan',
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
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
      borderRadius: BorderRadius.circular(12),
      onTap: () async {
        await _launchURL(url);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: <Widget>[
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: const Color(0xffE8F5F4),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(icon, size: 20, color: const Color(0xff0F766E)),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(
              Icons.open_in_new_rounded,
              size: 18,
              color: Color(0xff64748B),
            ),
          ],
        ),
      ),
    );
  }
}
