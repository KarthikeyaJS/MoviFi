import 'package:movifi/core/entity/keyword.dart';
import 'package:movifi/core/models/keyword.dart';

class KeywordMapper {
  static KeywordEntity toEntity(KeywordModel keywordModel) {
    return KeywordEntity(name: keywordModel.name, id: keywordModel.id);
  }
}
