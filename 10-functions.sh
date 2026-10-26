#!/bin/bash

# Function to print a header
print_header() {
    echo "=========================================="
    echo "$1"
    echo "=========================================="
}

# Function to check status
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

    if command -v "$package_name" &>/dev/null; then
        echo "$package_name is already installed"
    else
        if command -v dnf &>/dev/null; then
            dnf install -y "$package_name" &>/dev/null
        elif command -v apt-get &>/dev/null; then
            apt-get install -y "$package_name" &>/dev/null
        else
            check_status 1 "$package_name installation failed"
            return 1
        fi

        check_status "$?" "$package_name installed"
    fi
}

# Main program
print_header "Installing packages"

install_package git
install_package wget
install_package curl

