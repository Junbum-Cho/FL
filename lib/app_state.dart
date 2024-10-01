import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _schoolName =
          await secureStorage.getString('ff_schoolName') ?? _schoolName;
    });
    await _safeInitAsync(() async {
      _userRole = await secureStorage.getInt('ff_userRole') ?? _userRole;
    });
    await _safeInitAsync(() async {
      _facultyTeam =
          await secureStorage.getString('ff_facultyTeam') ?? _facultyTeam;
    });
    await _safeInitAsync(() async {
      _gmailVerified =
          await secureStorage.getBool('ff_gmailVerified') ?? _gmailVerified;
    });
    await _safeInitAsync(() async {
      _isWalkThroughCompleted =
          await secureStorage.getBool('ff_isWalkThroughCompleted') ??
              _isWalkThroughCompleted;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _schoolName = 'NA';
  String get schoolName => _schoolName;
  set schoolName(String value) {
    _schoolName = value;
    secureStorage.setString('ff_schoolName', value);
  }

  void deleteSchoolName() {
    secureStorage.delete(key: 'ff_schoolName');
  }

  int _userRole = 0;
  int get userRole => _userRole;
  set userRole(int value) {
    _userRole = value;
    secureStorage.setInt('ff_userRole', value);
  }

  void deleteUserRole() {
    secureStorage.delete(key: 'ff_userRole');
  }

  String _facultyTeam = 'NA';
  String get facultyTeam => _facultyTeam;
  set facultyTeam(String value) {
    _facultyTeam = value;
    secureStorage.setString('ff_facultyTeam', value);
  }

  void deleteFacultyTeam() {
    secureStorage.delete(key: 'ff_facultyTeam');
  }

  bool _gmailVerified = false;
  bool get gmailVerified => _gmailVerified;
  set gmailVerified(bool value) {
    _gmailVerified = value;
    secureStorage.setBool('ff_gmailVerified', value);
  }

  void deleteGmailVerified() {
    secureStorage.delete(key: 'ff_gmailVerified');
  }

  bool _isWalkThroughCompleted = false;
  bool get isWalkThroughCompleted => _isWalkThroughCompleted;
  set isWalkThroughCompleted(bool value) {
    _isWalkThroughCompleted = value;
    secureStorage.setBool('ff_isWalkThroughCompleted', value);
  }

  void deleteIsWalkThroughCompleted() {
    secureStorage.delete(key: 'ff_isWalkThroughCompleted');
  }

  String _userAccessToken = '';
  String get userAccessToken => _userAccessToken;
  set userAccessToken(String value) {
    _userAccessToken = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
