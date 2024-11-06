# Node.js、Yarn、Slidevのインストールの確認
if ! command -v node &> /dev/null; then
  echo "Node.js is not installed. Please install Node.js."
  exit 1
else
  echo "Node.js is already installed. Version: $(node -v)"
fi