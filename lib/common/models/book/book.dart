import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his_words/common/models/chapter/chapter_id.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    int? id,
    String? name,
    String? testament,
    List<ChapterId>? chapters,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  const Book._();
}
