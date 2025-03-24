import 'package:flutter/material.dart';


  


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/profile.jpg'), // Ganti dengan gambar profil
          ),
          const SizedBox(height: 10),
          const Text(
            'I Made Hananta Arsana Putra',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          const Text(
            'http://www.harsana_made.com',
            style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              children: [
                _buildGridItem(Icons.gps_fixed, "Singaraja", Colors.green),
                _buildGridItem(Icons.store, "Panji", Colors.orange),
                _buildGridItem(Icons.music_note, "All Genre", Colors.purple),
                _buildGridItem(Icons.apartment, "Undiksha", Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title, Color color) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.blue)),
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              title,
              style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
 ),
 );
}
}