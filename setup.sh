#!/bin/bash

echo "Welcome to GitHub Code Spaces Environment Setup!"
echo "Please select your desired environment:"
echo "1. Python"
echo "2. Java"
echo "3. Node.js"
echo -n "Enter your choice (1, 2, or 3): "
read choice

case $choice in
  1)
    # Python environment setup
    echo "Setting up Python environment..."

    # Install Python packages using pip
    pip install numpy pandas matplotlib requests Flask

    # Create and activate a Python virtual environment
    python -m venv myenv
    source myenv/bin/activate

    ;;
  2)
    # Java environment setup
    echo "Setting up Java environment..."

    # Install OpenJDK
    apt-get update
    apt-get install -y openjdk-11-jdk

    # Set up environment variables
    export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
    export PATH=$PATH:$JAVA_HOME/bin

    ;;
  3)
    # Node.js environment setup
    echo "Setting up Node.js environment..."

    # Install Node.js using nvm (Node Version Manager)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.nvm/nvm.sh
    nvm install node

    # Install global Node.js packages
    npm install -g express nodemon

    ;;
  *)
    echo "Invalid choice. Exiting..."
    exit 1
    ;;
esac

echo "Environment setup completed. Enjoy coding in your chosen environment!"
