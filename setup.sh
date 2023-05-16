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
    pip install numpy

    # Create and activate a Python virtual environment
    python -m venv myenv
    source myenv/bin/activate

    ;;
  2)
    # Java environment setup
    echo "Setting up Java environment..."

    # Add commands to set up the Java environment
    # For example, you can install JDK, set up environment variables, or configure build tools

    ;;
  *)
    echo "Invalid choice. Exiting..."
    exit 1
    ;;
esac

echo "Environment setup completed. Enjoy coding in your chosen environment!"
