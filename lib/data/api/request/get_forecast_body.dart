class GetForecastBody {
  final double latitude;
  final double longitude;

  GetForecastBody({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toApi() {
    return {
      'lat': latitude,
      'lng': longitude,
    };
  }
}
