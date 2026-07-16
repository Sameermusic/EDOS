class ProjectModel {
  final String id;
  final String name;
  final String videoPath;
  final String aspectRatio;
  final DateTime createdAt;

  const ProjectModel({
    required this.id,
    required this.name,
    required this.videoPath,
    required this.aspectRatio,
    required this.createdAt,
  });

  ProjectModel copyWith({
    String? id,
    String? name,
    String? videoPath,
    String? aspectRatio,
    DateTime? createdAt,
  }) {
    return ProjectModel(
      id: id ?? this.id,
      name: name ?? this.name,
      videoPath: videoPath ?? this.videoPath,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'videoPath': videoPath,
      'aspectRatio': aspectRatio,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      name: json['name'],
      videoPath: json['videoPath'],
      aspectRatio: json['aspectRatio'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}