import 'package:google_place/src/models/bounds.dart';
import 'package:google_place/src/models/place_location.dart';
import 'package:google_place/src/models/viewport.dart';

class Geometry {
  /// [location] contains the geocoded latitude,longitude value for this place.
  final PlaceLocation? location;

  /// [viewport] contains the preferred viewport when displaying this place on a map as a LatLngBounds if it is known.
  final Viewport? viewport;

  /// [bounds] contains bounds object
  final Bounds? bounds;

  Geometry({this.location, this.viewport, this.bounds});

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      location:
          json['location'] != null ? PlaceLocation.fromJson(json['location']) : null,
      viewport:
          json['viewport'] != null ? Viewport.fromJson(json['viewport']) : null,
      bounds: json['bounds'] != null ? Bounds.fromJson(json['bounds']) : null,
    );
  }
}
