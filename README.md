# Gsch-Hack

## Overview
Gsch-Hack is a decompilation of the "Geschool Secure Mode" app ([Google Play Link](https://play.google.com/store/apps/details?id=net.geschool.app.secure&hl=en)). The purpose of this project is to remove all security features from the original application.

## Technical Details
- **Languages Used**: 
  - Smali (67.8%)
  - Java (32.2%)

## Disclaimer
This repository is for educational purposes only. The use of this codebase for malicious intent is strictly discouraged and may violate legal and ethical boundaries. Use responsibly.

## Getting Started

### Prerequisites
Ensure you have the following tools installed:
- [Apktool](https://ibotpeaches.github.io/Apktool/) or [APKLab](https://marketplace.visualstudio.com/items?itemName=Surendrajat.apklab)
- JDK (Java Development Kit)
- A code editor (e.g., VS Code, IntelliJ IDEA)

### Steps to Build/Compile the App

#### Using Apktool
1. Clone the repository:
   ```bash
   git clone https://github.com/FarelRA/Gsch-Hack.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Gsch-Hack
   ```
3. Rebuild the APK using `apktool`:
   ```bash
   apktool b . -o output.apk
   ```
4. Sign the APK (if required) using `jarsigner` or any other signing tool:
   ```bash
   jarsigner -keystore your_keystore.jks output.apk alias_name
   ```
5. Install the APK on your device:
   ```bash
   adb install output.apk
   ```

#### Using APKLab
1. Open the repository in VS Code with the APKLab extension installed.
2. Select "Recompile APK" from the APKLab menu.
3. Once the APK is recompiled, sign it (if required) using a signing tool.
4. Install the APK on your device using `adb` or other installation methods.

## License
This repository does not have a license and is provided as-is.
