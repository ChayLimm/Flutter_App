import 'package:flutter/material.dart';
// import 'package:test1/W5-S2-List-Inputs/1%20-%20START%20CODE/EXERCISE-2/model/profile_tile_model.dart';
import 'package:lesson/W5_S2/EXERCISE-2/model/profile_tile_model.dart';
 
ProfileData chaylimProfile = ProfileData(
    name: "ChayLim",
    position: "Flutter Developer",
    avatarUrl: 'assets/images/Luffy.gif',
    tiles: [
      TileData( icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
      TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "Chay.lim@cadt.edu"),
      TileData(icon: Icons.email, title: "Mail", value: "Chay.lim@cadt.edu"),
      TileData(icon: Icons.email, title: "Mail", value: "Chay.lim@cadt.edu"),
      TileData(icon: Icons.email, title: "Mail", value: "Chay.lim@cadt.edu"),
      TileData(icon: Icons.email, title: "Mail", value: "Chay.lim@cadt.edu"),
    ]);
