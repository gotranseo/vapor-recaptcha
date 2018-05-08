# Vapor reCAPTCHA

## Motivation
This library is a helper for Vapor 3 projects to validate form submissions using the Google reCAPTCHA platform.

To get started, you need to obtain a secret key from: https://www.google.com/recaptcha/admin 

## Installation

Vapor reCAPTCHA is available through SPM. To install it, simply add the following to your `Package.swift` file:

```swift
.package(url: "https://github.com/gotranseo/vapor-recaptcha.git", from: "1.0.0")
```

Don't forget to also add it to dependencies array.

## Usage

### Registering the Provider
In `configure.swift`, add this line:

```swift
let captchaConfig = CaptchaConfig(secretKey: "SECRET-KEY-FROM-GOOGLE")
services.register(CaptchaProvider(config: captchaConfig))
```

### Usage
In your controller, you can do something like this:

```swift
let captchaResponse = ... //value from a submitted form
let googleCaptcha = try req.make(Captcha.self)
return googleCaptcha.validate(captchaFormResponse: captchaResponse).flatMap { success in 
    if success {
        //celebrate!
    } else {
        // :(
    }
}
```

## Author

Slate Solutions, Inc. 

## License

Vapor reCAPTCHA is available under the MIT license. See the LICENSE file for more info.