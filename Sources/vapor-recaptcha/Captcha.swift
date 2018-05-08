//
//  Captcha.swift
//  vapor-recaptcha
//
//  Created by Jimmy McDermott on 5/7/18.
//

import Foundation
import Vapor

public struct Captcha: Service {
    private let config: CaptchaConfig
    private let client: Client
    private let endpoint = "https://www.google.com/recaptcha/api/siteverify"
    
    init(config: CaptchaConfig, client: Client) {
        self.config = config
        self.client = client
    }
    
    public func validate(captchaFormResponse: String) throws -> Future<Bool> {
        let requestData = GoogleCaptchaRequest(secret: config.secretKey, response: captchaFormResponse)
        
        let request = client.post(endpoint) { req in
            try req.content.encode(requestData, as: .urlEncodedForm)
        }
        
        return request.flatMap { response in
            return try response.content.decode(GoogleCaptchaResponse.self)
        }.map { response in
            return response.success ?? false
        }
    }
}
