#!/bin/sh

npx svgo@latest svg

# Flutter
rm -r flutter
flutter create \
  --template=package \
  --project-name "coffeico" \
  --description "Free icons for different coffee brewing methods" \
  flutter
sed -i '' 's|version: 0.0.1|version: 0.0.1|' flutter/pubspec.yaml
sed -i '' 's|homepage:|homepage: https://github.com/typomanka/coffeico\nrepository: https://github.com/typomanka/coffeico|' flutter/pubspec.yaml
cat >> flutter/pubspec.yaml << EOF
  fonts:
    - family: Coffeico
      fonts:
        - asset: fonts/Coffeico.ttf
EOF
cat LICENSE > flutter/LICENSE
cat CHANGELOG.md > flutter/CHANGELOG.md
cat README.md > flutter/README.md
rm -r flutter/test
mkdir flutter/fonts
npx fantasticon@latest -c flutter.fantasticonrc.js
