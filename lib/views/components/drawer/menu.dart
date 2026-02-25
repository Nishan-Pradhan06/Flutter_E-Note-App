import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const MenuDrawer({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          tileColor: const Color(0xffF2FAF9),
          leading: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              color: const Color(0xffDDF1EF),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(icon, color: const Color(0xff0F766E), size: 20),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff0F172A),
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: const Icon(
            Icons.chevron_right_rounded,
            color: Color(0xff64748B),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
