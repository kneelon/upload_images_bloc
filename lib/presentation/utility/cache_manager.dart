import 'package:xam/presentation/utility/constant.dart' as constants;
// ignore: depend_on_referenced_packages
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final customCacheManager = CacheManager(
  Config(
    constants.customCacheKey,
    stalePeriod: const Duration(days: 15),
    maxNrOfCacheObjects: 100,
  ),
);
