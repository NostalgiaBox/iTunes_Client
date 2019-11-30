//
//  QueryItemProvider.swift
//  iTunesClient
//
//  Created by Murray Fenstermaker on 11/29/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
