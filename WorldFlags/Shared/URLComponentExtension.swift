//
//  URLComponentExtension.swift
//  WorldFlags
//
//  Created by Mohamed Diaa on 2021-09-26.
//  Copyright © 2021 Mohamed Diaa. All rights reserved.
//

import Foundation

extension URLComponents {
    
    mutating func setQueryItems(with parameters: [String: String]) {
        self.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
    
    init(components: WFURLComponentsModel) {
        self.init()
        host = components.host
        path = components.path
        scheme = components.scheme
    }
}
