# pet_club

Pet Club is a gathering place for pet enthusiasts.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 设置git提交规范钩子

```shell
dart run husky install
dart run husky set .husky/commit-msg 'dart run commitlint_cli --edit "$1"'
```