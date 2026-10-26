#!/bin/bash

# Write a script 10-functions.sh that defines the following functions:

# print_header — prints a separator line and a heading passed as argument
# check_status — accepts an exit code and a message; prints SUCCESS: <message> or FAILURE: <message>
# install_package — accepts a package name; checks if installed, installs if not, uses check_status to report
# Call install_package for: git, wget, curl

print_header(){
    echo "=========================================="
    echo "$1"
    echo "=========================================="
}

# check_status — accepts an exit code and a message; prints SUCCESS: <message> or FAILURE: <message>
check_status(){
    if [ "$1" -q 0 ] ; then
      echo "SUCCESS: $2"
    else 
      echo "FAILURE: $2"
    fi
}

# install_package — accepts a package name; checks if installed, installs if not, uses check_status to report

install_package(){
  package_name="$1"
  print_header "Installing $package_name"
  if command -v "$package_name" &>/dev/null; then 
  check_status 0 "$package_name is already installed"
  else
    if command -v dnf &>/dev/null; then
      dnf install -y "$package_name" 
      elif 
      command -v apt-get &>/dev/null; then 
      apt-get update -y && apt-get install -y "$package_name"
       else
        check_status 1 "No supported package manager found"
         return 1
     fi
      check_status "$?" "$package_name installation" 
    fi

}
