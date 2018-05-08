//
//  CaptchaConfig.swift
//  vapor-recaptcha
//
//  Created by Jimmy McDermott on 5/7/18.
//

import Foundation

public struct CaptchaConfig {
    let secretKey: String
    
    public init(secretKey: String) {
        self.secretKey = secretKey
    }
}
