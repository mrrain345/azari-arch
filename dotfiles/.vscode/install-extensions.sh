#/bin/sh
set -euo pipefail

for ext in $(cat ~/.vscode/extensions-list);
do
  code --install-extension $ext --force
done
