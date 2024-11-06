# Node.jsのバージョン確認
if ! command -v node &> /dev/null
then
    echo "Node.js is not installed. Installing Node.js..."
    brew install node
else
    echo "Node.js is already installed. Version: $(node -v)"
fi

# Yarnのバージョン確認
if ! command -v yarn &> /dev/null
then
    echo "Yarn is not installed. Installing Yarn..."
    npm install -g yarn
else
    echo "Yarn is already installed. Version: $(yarn -v)"
fi

# Slidevのバージョン確認
if ! command -v slidev &> /dev/null
then
    echo "Slidev is not installed. Installing Slidev..."
    yarn global add slidev
else
    echo "Slidev is already installed. Version: $(slidev --version)"
fi

# インストールが完了したことを確認
echo "install complete"

# ログファイルを出力
echo "Node.js: $(node -v)" >> $LOG_FILE
echo "Yarn: $(yarn -v)" >> $LOG_FILE
echo "Slidev: $(slidev --version)" >> $LOG_FILE