#!/bin/bash

echo "Welcome to GitHub Code Spaces Environment Setup!"
echo "Please select your desired environment:"
echo "1. Python"
echo "2. Java"
echo -n "Enter your choice (1 or 2): "
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
  *)
    echo "Invalid choice. Exiting..."
    exit 1
    ;;
esac

echo "Environment setup completed. Enjoy coding in your chosen environment!"
