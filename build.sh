#!/bin/sh

set -eu

# Package metadata, documentation, examples, and tests are maintained by hand.
# Generation is intentionally limited to the two derived icon-font artifacts.
npm ci
npm run generate
dart format flutter/lib/coffeico_plus.dart
