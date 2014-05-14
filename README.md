CodigoDelSurSDK for iOS
=======================

The SDK we use in all our iOS projects

##Installation

###Using Cocoapods

1) Add our private pods repo by running the following in a `Terminal` window:

```
pod repo add CodigoDelSurSDK https://github.com/codigodelsur/CodigoDelSur-Specs.git
```

2) Add the following line to your `Podfile`:

```
pod 'CodigoDelSurSDK'
```

3) Import `CodigoDelSurSDK.h` in your project's prefix file.

###Manually

1) Clone this repo
2) Copy everything inside the `CodigoDelSurSDK` folder in your project.
3) Import `CodigoDelSurSDK.h` in your project's prefix file.

##Categories

####UIAlertView

- Show a simple message

```objc
[UIAlertView showMessage:@"Hello world"];
```
