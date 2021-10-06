# action-android 

This is a collection of GitHub Actions for Android development

# CREDITS
https://github.com/Malinskiy/action-android

# Requirements

This is only tested with **macOS-10.15** environment. It might work on linux but there is no support for kvm there so don't expect to have api 26+ available there.

## Android SDK
This repo provides an action for installing the Android SDK on the build agent. It will override whatever setup is 
already there. You might want to do this since default GitHub Actions environments are now missing `sdkmanager` binary
so they're immutable.

### Usage

```yaml
steps:
  - uses: actions/checkout@v1

  # Download & install the Android SDK.
  - uses: malinskiy/action-android/install-sdk@release/0.1.2

  # Set up platform tools like adb.
  - run: sdkmanager platform-tools

  # Start ADB (and verify that pathing is working correctly).
  - run: adb devices

  # Verify $ANDROID_HOME is properly set for later Gradle commands.
  - run: echo $ANDROID_HOME
```

# License

```
MIT License

Copyright (c) 2020 Anton Malinskiy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Android SDK
By using this action you're automatically accepting the relevant licenses of Android SDK. See the Android SDK for more details.