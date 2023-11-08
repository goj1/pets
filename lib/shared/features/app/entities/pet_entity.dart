class PetEntity {
  final String id;
  final String name;
  final String weight;
  final String metric;
  final String temperament;
  final String description;
  final String lifeSpan;
  final int adaptability;
  final int childFriendly;
  final int affectionLevel;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int socialNeeds;
  final int strangerFriendly;
  final String imageId;
  final String imageUrl;
  final String origin;

  PetEntity({
    required this.id,
    required this.name,
    required this.weight,
    required this.metric,
    required this.temperament,
    required this.description,
    required this.lifeSpan,
    required this.adaptability,
    required this.childFriendly,
    required this.affectionLevel,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.imageId,
    required this.imageUrl,
    required this.origin,
  });

  factory PetEntity.fromJson(Map<String, dynamic> json) {
    return PetEntity(
      id: json['id'].toString(),
      name: json['name'] ?? '',
      weight: json['weight']['imperial'] ?? '',
      metric: json['weight']['metric'] ?? '',
      temperament: json['temperament'] ?? '',
      description: json['description'] ?? '',
      lifeSpan: json['life_span'] ?? '',
      adaptability: json['adaptability'] ?? 0,
      childFriendly: json['child_friendly'] ?? 0,
      affectionLevel: json['affection_level'] ?? 0,
      dogFriendly: json['dog_friendly'] ?? 0,
      energyLevel: json['energy_level'] ?? 0,
      grooming: json['grooming'] ?? 0,
      healthIssues: json['health_issues'] ?? 0,
      intelligence: json['intelligence'] ?? 0,
      socialNeeds: json['social_needs'] ?? 0,
      strangerFriendly: json['stranger_friendly'] ?? 0,
      imageId: json['reference_image_id'] ?? '',
      imageUrl: json['image'] != null ? json['image']['url'] : '',
      origin: json['origin'] ?? '',
    );
  }
}
