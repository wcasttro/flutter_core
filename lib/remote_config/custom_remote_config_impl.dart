import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'package:core/remote_config/custom_remote_config.dart';

class CustomRemoteConfigImpl implements CustomRemoteConfig {
  late FirebaseRemoteConfig _firebaseRemoteConfig;

  CustomRemoteConfigImpl._internal();
  static final CustomRemoteConfigImpl _customRemoteConfig =
      CustomRemoteConfigImpl._internal();
  factory CustomRemoteConfigImpl() => _customRemoteConfig;

  Future<void> init() async {
    _firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(hours: 2),
      ),
    );
    await _firebaseRemoteConfig.fetchAndActivate();
  }

  @override
  Future<void> fetch() async {
    _firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: Duration.zero,
      ),
    );
    await _firebaseRemoteConfig.fetchAndActivate();
  }

  @override
  dynamic getValueOrDefault(
      {required String key, required dynamic defaultValue}) {
    switch (defaultValue.runtimeType) {
      case String:
        String value = _firebaseRemoteConfig.getString(key);
        return value != '' ? value : defaultValue;
      case int:
        int value = _firebaseRemoteConfig.getInt(key);
        return value != 0 ? value : defaultValue;
      case bool:
        bool value = _firebaseRemoteConfig.getBool(key);
        return value ? value : defaultValue;
    }
  }
}
