import 'package:flutter/material.dart';
import 'package:lesson/W5_S2/EXERCISE-2/data/profile_data.dart';
import 'package:lesson/W5_S2/EXERCISE-2/model/profile_tile_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileApp();
  }
}

const Color mainColor = Color.fromARGB(255, 250, 91, 99);

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor.withAlpha(100),
      appBar: AppBar(
        backgroundColor: mainColor.withAlpha(50),
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: 
        SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(chaylimProfile.avatarUrl),
            ),
            const SizedBox(height: 20),
            Text(
              chaylimProfile.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Text(
              chaylimProfile.position,
              style:const  TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
           const  SizedBox(height: 20),
             ...chaylimProfile.tiles.map((toElement) => ProfileTile(
                      icon: toElement.icon,
                      title: toElement.title,
                      data: toElement.value))
          ],
        ),
      
      )
        
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: mainColor),
          title: Text(title),
          subtitle: Text(data),
        ),
      ),
    );
  }
}
