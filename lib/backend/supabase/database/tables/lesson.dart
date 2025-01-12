import '../database.dart';

class LessonTable extends SupabaseTable<LessonRow> {
  @override
  String get tableName => 'lesson';

  @override
  LessonRow createRow(Map<String, dynamic> data) => LessonRow(data);
}

class LessonRow extends SupabaseDataRow {
  LessonRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LessonTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get info => getField<String>('info');
  set info(String? value) => setField<String>('info', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);
}
