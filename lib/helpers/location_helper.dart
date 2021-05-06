import 'dart:convert';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyAnNIbcYnRqy4Zsff41HoD2yXdm9ZxL0lQ';

class LocationHelper {
  static String generateLocationImage({double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=1080x400&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY');
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}