import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double lagitude, longitude;
  final String address;

  const PlaceLocation({
    @required this.lagitude,
    @required this.longitude,
    this.address,
  });
}

class Place {
  final String id, title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
