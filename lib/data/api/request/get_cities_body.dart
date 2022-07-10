class GetCitiesBody {
  final String name;

  GetCitiesBody({
    required this.name,
  });

  Map<String, dynamic> toApi() {
    return {
      'name': name,
    };
  }
}