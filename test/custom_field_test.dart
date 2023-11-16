import 'package:contactus/models/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomSocialField', () {
    test('Initialization', () {
      // Arrange
      final icon = Icon(Icons.link);
      final name = 'GitHub';
      final url = 'https://github.com';

      // Act
      final customSocialField = CustomSocialField(
        icon: icon,
        name: name,
        url: url,
      );

      // Assert
      expect(customSocialField.icon, equals(icon));
      expect(customSocialField.name, equals(name));
      expect(customSocialField.url, equals(url));
    });

    // Add more tests based on your specific requirements
  });
}
