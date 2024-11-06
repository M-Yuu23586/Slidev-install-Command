# Node.jsのインストール
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Installing Node.js..."
    if ! brew install node; then
        echo "Error: Node.js installation failed."
        exit 1
    fi
else
    echo "Node.js is already installed. Version: $(node -v)"
fi

# npmのインストール
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Installing npm..."
    if ! brew install npm; then
        echo "Error: npm installation failed."
        exit 1
    fi
else
    echo "npm is already installed. Version: $(npm -v)"
fi

# yarnのインストール
if ! command -v yarn &> /dev/null; then
    echo "yarn is not installed. Installing yarn..."
    if ! brew install yarn; then
        echo "Error: yarn installation failed."
        exit 1
    fi
else
    echo "yarn is already installed. Version: $(yarn -v)"
fi