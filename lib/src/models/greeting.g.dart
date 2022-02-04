// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting.dart';

// **************************************************************************
// MigrationGenerator
// **************************************************************************

class GreetingMigration extends Migration {
  @override
  void up(Schema schema) {
    schema.create('greetings', (table) {
      table.serial('id').primaryKey();
      table.timeStamp('created_at').defaultsTo(currentTimestamp);
      table.timeStamp('updated_at').defaultsTo(currentTimestamp);
      table.varChar('message', length: 255);
    });
  }

  @override
  void down(Schema schema) {
    schema.drop('greetings');
  }
}

class BookMigration extends Migration {
  @override
  void up(Schema schema) {
    schema.create('books', (table) {
      table.serial('id').primaryKey();
      table.timeStamp('created_at').defaultsTo(currentTimestamp);
      table.timeStamp('updated_at').defaultsTo(currentTimestamp);
      table.varChar('name', length: 255);
      table.declareColumn(
          'price', Column(type: ColumnType('decimal'), length: 255));
    });
  }

  @override
  void down(Schema schema) {
    schema.drop('books');
  }
}

// **************************************************************************
// OrmGenerator
// **************************************************************************

class GreetingQuery extends Query<Greeting, GreetingQueryWhere> {
  GreetingQuery({Query? parent, Set<String>? trampoline})
      : super(parent: parent) {
    trampoline ??= <String>{};
    trampoline.add(tableName);
    _where = GreetingQueryWhere(this);
  }

  @override
  final GreetingQueryValues values = GreetingQueryValues();

  List<String> _selectedFields = [];

  GreetingQueryWhere? _where;

  @override
  Map<String, String> get casts {
    return {};
  }

  @override
  String get tableName {
    return 'greetings';
  }

  @override
  List<String> get fields {
    const _fields = ['id', 'created_at', 'updated_at', 'message'];
    return _selectedFields.isEmpty
        ? _fields
        : _fields.where((field) => _selectedFields.contains(field)).toList();
  }

  GreetingQuery select(List<String> selectedFields) {
    _selectedFields = selectedFields;
    return this;
  }

  @override
  GreetingQueryWhere? get where {
    return _where;
  }

  @override
  GreetingQueryWhere newWhereClause() {
    return GreetingQueryWhere(this);
  }

  Optional<Greeting> parseRow(List row) {
    if (row.every((x) => x == null)) {
      return Optional.empty();
    }
    var model = Greeting(
        id: fields.contains('id') ? row[0].toString() : null,
        createdAt: fields.contains('created_at') ? (row[1] as DateTime?) : null,
        updatedAt: fields.contains('updated_at') ? (row[2] as DateTime?) : null,
        message: fields.contains('message') ? (row[3] as String?) : null);
    return Optional.of(model);
  }

  @override
  Optional<Greeting> deserialize(List row) {
    return parseRow(row);
  }
}

class GreetingQueryWhere extends QueryWhere {
  GreetingQueryWhere(GreetingQuery query)
      : id = NumericSqlExpressionBuilder<int>(query, 'id'),
        createdAt = DateTimeSqlExpressionBuilder(query, 'created_at'),
        updatedAt = DateTimeSqlExpressionBuilder(query, 'updated_at'),
        message = StringSqlExpressionBuilder(query, 'message');

  final NumericSqlExpressionBuilder<int> id;

  final DateTimeSqlExpressionBuilder createdAt;

  final DateTimeSqlExpressionBuilder updatedAt;

  final StringSqlExpressionBuilder message;

  @override
  List<SqlExpressionBuilder> get expressionBuilders {
    return [id, createdAt, updatedAt, message];
  }
}

class GreetingQueryValues extends MapQueryValues {
  @override
  Map<String, String> get casts {
    return {};
  }

  String? get id {
    return (values['id'] as String?);
  }

  set id(String? value) => values['id'] = value;
  DateTime? get createdAt {
    return (values['created_at'] as DateTime?);
  }

  set createdAt(DateTime? value) => values['created_at'] = value;
  DateTime? get updatedAt {
    return (values['updated_at'] as DateTime?);
  }

  set updatedAt(DateTime? value) => values['updated_at'] = value;
  String? get message {
    return (values['message'] as String?);
  }

  set message(String? value) => values['message'] = value;
  void copyFrom(Greeting model) {
    createdAt = model.createdAt;
    updatedAt = model.updatedAt;
    message = model.message;
  }
}

class BookQuery extends Query<Book, BookQueryWhere> {
  BookQuery({Query? parent, Set<String>? trampoline}) : super(parent: parent) {
    trampoline ??= <String>{};
    trampoline.add(tableName);
    _where = BookQueryWhere(this);
  }

  @override
  final BookQueryValues values = BookQueryValues();

  List<String> _selectedFields = [];

  BookQueryWhere? _where;

  @override
  Map<String, String> get casts {
    return {'price': 'text'};
  }

  @override
  String get tableName {
    return 'books';
  }

  @override
  List<String> get fields {
    const _fields = ['id', 'created_at', 'updated_at', 'name', 'price'];
    return _selectedFields.isEmpty
        ? _fields
        : _fields.where((field) => _selectedFields.contains(field)).toList();
  }

  BookQuery select(List<String> selectedFields) {
    _selectedFields = selectedFields;
    return this;
  }

  @override
  BookQueryWhere? get where {
    return _where;
  }

  @override
  BookQueryWhere newWhereClause() {
    return BookQueryWhere(this);
  }

  Optional<Book> parseRow(List row) {
    if (row.every((x) => x == null)) {
      return Optional.empty();
    }
    var model = Book(
        id: fields.contains('id') ? row[0].toString() : null,
        createdAt: fields.contains('created_at') ? (row[1] as DateTime?) : null,
        updatedAt: fields.contains('updated_at') ? (row[2] as DateTime?) : null,
        name: fields.contains('name') ? (row[3] as String?) : null,
        price: fields.contains('price')
            ? double.tryParse(row[4].toString())
            : null);
    return Optional.of(model);
  }

  @override
  Optional<Book> deserialize(List row) {
    return parseRow(row);
  }
}

class BookQueryWhere extends QueryWhere {
  BookQueryWhere(BookQuery query)
      : id = NumericSqlExpressionBuilder<int>(query, 'id'),
        createdAt = DateTimeSqlExpressionBuilder(query, 'created_at'),
        updatedAt = DateTimeSqlExpressionBuilder(query, 'updated_at'),
        name = StringSqlExpressionBuilder(query, 'name'),
        price = NumericSqlExpressionBuilder<double>(query, 'price');

  final NumericSqlExpressionBuilder<int> id;

  final DateTimeSqlExpressionBuilder createdAt;

  final DateTimeSqlExpressionBuilder updatedAt;

  final StringSqlExpressionBuilder name;

  final NumericSqlExpressionBuilder<double> price;

  @override
  List<SqlExpressionBuilder> get expressionBuilders {
    return [id, createdAt, updatedAt, name, price];
  }
}

class BookQueryValues extends MapQueryValues {
  @override
  Map<String, String> get casts {
    return {'price': 'decimal'};
  }

  String? get id {
    return (values['id'] as String?);
  }

  set id(String? value) => values['id'] = value;
  DateTime? get createdAt {
    return (values['created_at'] as DateTime?);
  }

  set createdAt(DateTime? value) => values['created_at'] = value;
  DateTime? get updatedAt {
    return (values['updated_at'] as DateTime?);
  }

  set updatedAt(DateTime? value) => values['updated_at'] = value;
  String? get name {
    return (values['name'] as String?);
  }

  set name(String? value) => values['name'] = value;
  double? get price {
    return double.tryParse((values['price'] as String));
  }

  set price(double? value) => values['price'] = value.toString();
  void copyFrom(Book model) {
    createdAt = model.createdAt;
    updatedAt = model.updatedAt;
    name = model.name;
    price = model.price;
  }
}

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Greeting extends _Greeting {
  Greeting({this.id, this.createdAt, this.updatedAt, required this.message});

  /// A unique identifier corresponding to this item.
  @override
  String? id;

  /// The time at which this item was created.
  @override
  DateTime? createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime? updatedAt;

  @override
  String? message;

  Greeting copyWith(
      {String? id, DateTime? createdAt, DateTime? updatedAt, String? message}) {
    return Greeting(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        message: message ?? this.message);
  }

  @override
  bool operator ==(other) {
    return other is _Greeting &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.message == message;
  }

  @override
  int get hashCode {
    return hashObjects([id, createdAt, updatedAt, message]);
  }

  @override
  String toString() {
    return 'Greeting(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, message=$message)';
  }

  Map<String, dynamic> toJson() {
    return GreetingSerializer.toMap(this);
  }
}

@generatedSerializable
class Book extends _Book {
  Book(
      {this.id,
      this.createdAt,
      this.updatedAt,
      required this.name,
      required this.price});

  /// A unique identifier corresponding to this item.
  @override
  String? id;

  /// The time at which this item was created.
  @override
  DateTime? createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime? updatedAt;

  @override
  String? name;

  @override
  double? price;

  Book copyWith(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      double? price}) {
    return Book(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        price: price ?? this.price);
  }

  @override
  bool operator ==(other) {
    return other is _Book &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        other.price == price;
  }

  @override
  int get hashCode {
    return hashObjects([id, createdAt, updatedAt, name, price]);
  }

  @override
  String toString() {
    return 'Book(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, price=$price)';
  }

  Map<String, dynamic> toJson() {
    return BookSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const GreetingSerializer greetingSerializer = GreetingSerializer();

class GreetingEncoder extends Converter<Greeting, Map> {
  const GreetingEncoder();

  @override
  Map convert(Greeting model) => GreetingSerializer.toMap(model);
}

class GreetingDecoder extends Converter<Map, Greeting> {
  const GreetingDecoder();

  @override
  Greeting convert(Map map) => GreetingSerializer.fromMap(map);
}

class GreetingSerializer extends Codec<Greeting, Map> {
  const GreetingSerializer();

  @override
  GreetingEncoder get encoder => const GreetingEncoder();
  @override
  GreetingDecoder get decoder => const GreetingDecoder();
  static Greeting fromMap(Map map) {
    if (map['message'] == null) {
      throw FormatException("Missing required field 'message' on Greeting.");
    }

    return Greeting(
        id: map['id'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        message: map['message'] as String?);
  }

  static Map<String, dynamic> toMap(_Greeting? model) {
    if (model == null) {
      return {};
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'message': model.message
    };
  }
}

abstract class GreetingFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    message
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String message = 'message';
}

const BookSerializer bookSerializer = BookSerializer();

class BookEncoder extends Converter<Book, Map> {
  const BookEncoder();

  @override
  Map convert(Book model) => BookSerializer.toMap(model);
}

class BookDecoder extends Converter<Map, Book> {
  const BookDecoder();

  @override
  Book convert(Map map) => BookSerializer.fromMap(map);
}

class BookSerializer extends Codec<Book, Map> {
  const BookSerializer();

  @override
  BookEncoder get encoder => const BookEncoder();
  @override
  BookDecoder get decoder => const BookDecoder();
  static Book fromMap(Map map) {
    if (map['name'] == null) {
      throw FormatException("Missing required field 'name' on Book.");
    }

    if (map['price'] == null) {
      throw FormatException("Missing required field 'price' on Book.");
    }

    return Book(
        id: map['id'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        name: map['name'] as String?,
        price: map['price'] as double?);
  }

  static Map<String, dynamic> toMap(_Book? model) {
    if (model == null) {
      return {};
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'name': model.name,
      'price': model.price
    };
  }
}

abstract class BookFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    price
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String price = 'price';
}
