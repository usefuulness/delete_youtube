#!/bin/bash

# Script to remove YouTube from an Android device using ADB

# Ensure ADB is installed
if ! command -v adb &> /dev/null; then
    echo "ADB is not installed. Please install it first."
    exit 1
fi

# Check if device is connected
adb devices

echo "Ensure your device is connected and USB debugging is enabled."
echo "Press Enter to continue..."
read

# Find the YouTube package
YOUTUBE_PACKAGE="com.google.android.youtube"

# Uninstall YouTube
adb shell pm uninstall --user 0 "$YOUTUBE_PACKAGE"

echo "YouTube has been removed successfully!"
