import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Modifier le profil'),
              leading: Icon(Icons.person),
              onTap: () {
                // Logique pour modifier le profil
              },
            ),
            ListTile(
              title: Text('Changer le mot de passe'),
              leading: Icon(Icons.lock),
              onTap: () {
                // Logique pour changer le mot de passe
              },
            ),
            ListTile(
              title: Text('Déconnexion'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
