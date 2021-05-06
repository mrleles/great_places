import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/screens/place_detail_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatePlaces(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
          darkTheme: ThemeData.dark(),
          home: PlacesListScreen(),
          routes: {
            AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
            PlaceDetailScreen.routeName: (context) => PlaceDetailScreen(),
          }),
    );
  }
}
