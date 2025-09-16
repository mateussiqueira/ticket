#!/usr/bin/env bash
set -euo pipefail

flutter test --coverage
# opcional: limpar ruídos comuns
if command -v lcov >/dev/null 2>&1; then
  lcov --remove coverage/lcov.info '**/*.g.dart' '**/*.freezed.dart' '**/test/**' '**/.pub-cache/**' -o coverage/lcov.info || true
  genhtml coverage/lcov.info -o coverage/html
  # abre no SO atual
  if [[ "$OSTYPE" == "darwin"* ]]; then
    open coverage/html/index.html
  elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open coverage/html/index.html
  elif command -v wslview >/dev/null 2>&1; then
    wslview coverage/html/index.html
  fi
else
  echo "lcov/genhtml não encontrados. Instale lcov para gerar HTML."
fi
