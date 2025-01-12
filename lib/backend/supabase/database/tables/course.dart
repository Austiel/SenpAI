import '../database.dart';

class CourseTable extends SupabaseTable<CourseRow> {
  @override
  String get tableName => 'course';

  @override
  CourseRow createRow(Map<String, dynamic> data) => CourseRow(data);
}

class CourseRow extends SupabaseDataRow {
  CourseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CourseTable();

  int get lessonId => getField<int>('lesson_id')!;
  set lessonId(int value) => setField<int>('lesson_id', value);

  int get currLesson => getField<int>('curr_lesson')!;
  set currLesson(int value) => setField<int>('curr_lesson', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
