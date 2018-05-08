//
//  GoogleCaptchaResponse.swift
//  vapor-recaptcha
//
//  Created by Jimmy McDermott on 5/7/18.
//

import Foundation
import Vapor

struct GoogleCaptchaResponse: Content {
    var success: Bool?
}
