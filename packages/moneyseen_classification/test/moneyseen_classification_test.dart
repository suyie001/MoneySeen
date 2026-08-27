import 'package:moneyseen_classification/moneyseen_classification.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:test/test.dart';

void main() {
  test('LLM suggestions cannot replace manual decisions', () {
    expect(
      canReplaceClassification(
        current: ClassificationSource.manual,
        incoming: ClassificationSource.llm,
      ),
      isFalse,
    );
  });
}
