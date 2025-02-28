# README: Remove YouTube using ADB

## Prerequisites
1. Ensure `adb` (Android Debug Bridge) is installed:
   ```sh
   sudo apt update && sudo apt install adb -y   # Debian/Ubuntu
   sudo pacman -S android-tools                # Arch Linux
   sudo dnf install android-tools              # Fedora
   ```

2. Enable USB Debugging on your Android device:
   - Go to **Settings > About phone**.
   - Tap **Build number** multiple times until you see "You are now a developer!"
   - Go to **Developer options** and enable **USB Debugging**.

## Usage
1. Connect your Android device to the Linux computer via USB.
2. Run the Bash script:
   ```sh
   chmod +x adb_delete_youtube.sh
   ./adb_delete_youtube.sh
   ```

## What This Script Does
- Checks if `adb` is installed.
- Lists connected devices.
- Uninstalls YouTube (`com.google.android.youtube`) for the current user.
- Reboots the device to apply changes.

## Alternative: Reinstall YouTube
If you ever want to reinstall YouTube, use:
```sh
adb shell cmd package install-existing com.google.android.youtube
```

