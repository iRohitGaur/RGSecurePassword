# RGSecurePassword

[![CI Status](https://img.shields.io/travis/iRohitGaur/RGSecurePassword.svg?style=flat)](https://travis-ci.org/iRohitGaur/RGSecurePassword)
[![Version](https://img.shields.io/cocoapods/v/RGSecurePassword.svg?style=flat)](https://cocoapods.org/pods/RGSecurePassword)
[![License](https://img.shields.io/cocoapods/l/RGSecurePassword.svg?style=flat)](https://cocoapods.org/pods/RGSecurePassword)
[![Platform](https://img.shields.io/cocoapods/p/RGSecurePassword.svg?style=flat)](https://cocoapods.org/pods/RGSecurePassword)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

RGSecurePassword is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RGSecurePassword'
```
## Usage

Import it in your file:

```ruby
import RGSecurePassword
```
Use it simply by passing the values:

```ruby
yourLabel.text = RGSecurePassword.get(pool: .default, length: 12)
```
You can change the length and pool type as per your wish.

## Author

iRohitGaur, rohitgaur7@gmail.com

## License

RGSecurePassword is available under the MIT license. See the LICENSE file for more info.
