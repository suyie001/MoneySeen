import 'package:moneyseen_domain/moneyseen_domain.dart';

int classificationPriority(ClassificationSource source) => switch (source) {
  ClassificationSource.manual => 500,
  ClassificationSource.rule => 400,
  ClassificationSource.system => 300,
  ClassificationSource.llm => 200,
  ClassificationSource.none => 0,
};

bool canReplaceClassification({
  required ClassificationSource current,
  required ClassificationSource incoming,
}) => classificationPriority(incoming) >= classificationPriority(current);
