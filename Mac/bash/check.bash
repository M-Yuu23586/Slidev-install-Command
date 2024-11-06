# Node.js、Yarn、Slidevのインストールの確認
if ! command -v node &> /dev/null; then
  echo "Node.js is not installed. Please install Node.js."
  exit 1
fi
# Node.js、Yarn、Slidevがインストールされている場合、バージョンを確認
echo "Node.js: $(node -v)"
if ! command -v yarn &> /dev/null; then
  echo "Yarn is not
  installed. Please install Yarn."
  exit 1
fi
echo "Yarn: $(yarn -v)"
if ! command -v slidev &> /dev/null; then
  echo "Slidev is not installed. Please install Slidev."
  exit 1
fi
echo "Slidev: $(slidev -v)"
```