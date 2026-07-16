import 'package:uuid/uuid.dart';

import '../domain/project_model.dart';

class ProjectService {
  final _uuid = const Uuid();

  ProjectModel createProject({
    required String name,
    required String videoPath,
    required String aspectRatio,
  }) {
    return ProjectModel(
      id: _uuid.v4(),
      name: name,
      videoPath: videoPath,
      aspectRatio: aspectRatio,
      createdAt: DateTime.now(),
    );
  }
}