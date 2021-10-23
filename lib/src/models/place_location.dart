class PlaceLocation {
  final double? lat;
  final double? lng;

  PlaceLocation({this.lat, this.lng});

  factory PlaceLocation.fromJson(Map<String, dynamic> json) {
    return PlaceLocation(
      lat: json['lat'] != null ? json['lat'].toDouble() : null,
      lng: json['lng'] != null ? json['lng'].toDouble() : null,
    );
  }
}
