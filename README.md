# qc_flutter_firebase

A new Flutter project with firebase

## Getting Started


## fix
```
flutterfire configure send some errors

0. npm install -g firebase-tools

1. cannot load such file -- xcodeproj (LoadError)
gem install xcodeproj

2. Android compatibility
    1）android/build.gradle
    dependencies {
        classpath 'com.android.tools.build:gradle:7.3.0'
        // START: FlutterFire Configuration
        classpath 'com.google.gms:google-services:4.3.10'
        // END: FlutterFire Configuration
        ...
    }
    2) android/app/builf.gradle
    
    minSdkVersion 21

```

