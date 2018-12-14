//
//  SendEvent.swift
//  OptimizelyCore
//
//  Created by Thomas Zurkan on 12/3/18.
//  Copyright © 2018 Optimizely. All rights reserved.
//

import Foundation

public class EventForDispatch {
    static let eventEndpoint = "https://logx.optimizely.com/v1/events"
    
    let url:URL?
    let body:Data?
    
    convenience init(body:Data) {
        self.init(url: URL(string:EventForDispatch.eventEndpoint)!, body: body)
    }
    
    init(url:URL, body:Data) {
        self.url = url
        self.body = body
    }
}