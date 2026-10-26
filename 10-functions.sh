#!/bin/bash

# Function to print a header
print_header() {
    echo "========================================"
    echo "$1"
    echo "========================================"
}

# Function to check command status
check_status() {
    if [ "$1" -eq 0 ]; then
        echo "SUCCESS: $2"
    else
        echo "FAILURE: $2"
    fi
}

# Function to install a package
install_package() {
    package_name="$1"

    print_header "Installing $package_name"

    if command -v "$package_name" &>/dev/null; then
        check_status 0 "$package_name is already installed"
    else
        if command -v dnf &>/dev/null; then
            dnf install -y "$package_name"
        elif command -v apt-get &>/dev/null; then
            apt-get update -y && apt-get install -y "$package_name"
        else
            check_status 1 "No supported package manager found"
            return 1
        fi

        check_status "$?" "$package_name installation"
    fi
}

# Install required packages
install_package git
install_package wget
install_package curl

