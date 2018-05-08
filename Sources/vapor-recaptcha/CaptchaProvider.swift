//
//  CaptchaProvider.swift
//  vapor-recaptcha
//
//  Created by Jimmy McDermott on 5/7/18.
//

import Foundation
import Vapor

public struct CaptchaProvider: Provider {
    
    private let config: CaptchaConfig
    
    init(config: CaptchaConfig) {
        self.config = config
    }
    
    public func register(_ services: inout Services) throws {
        services.register { container -> Captcha in
            return try Captcha(config: self.config, client: container.make())
        }
    }
    
    public func didBoot(_ container: Container) throws -> EventLoopFuture<Void> {
        return .done(on: container)
    }
}
