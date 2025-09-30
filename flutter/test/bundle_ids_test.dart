import 'package:flutter_test/flutter_test.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() {
  group('SentryFlutterOptions bundleIds', () {
    test('should initialize with empty bundleIds list', () {
      final options = SentryFlutterOptions();
      expect(options.bundleIds, isEmpty);
    });

    test('should allow setting bundleIds', () {
      final options = SentryFlutterOptions();
      final bundleIds = ['bundle-id-1', 'bundle-id-2'];

      options.bundleIds = bundleIds;

      expect(options.bundleIds, equals(bundleIds));
    });

    test('should allow adding bundleIds to existing list', () {
      final options = SentryFlutterOptions();
      final initialBundleIds = ['bundle-id-1'];
      final additionalBundleIds = ['bundle-id-2', 'bundle-id-3'];

      options.bundleIds = initialBundleIds;
      options.bundleIds.addAll(additionalBundleIds);

      expect(options.bundleIds,
          equals(['bundle-id-1', 'bundle-id-2', 'bundle-id-3']));
    });

    test('should handle empty bundleIds', () {
      final options = SentryFlutterOptions();

      options.bundleIds = [];

      expect(options.bundleIds, isEmpty);
    });
  });
}
