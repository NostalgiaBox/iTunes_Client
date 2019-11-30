//
//  ItunesError.swift
//  iTunesClient
//
//  Created by Murray Fenstermaker on 11/30/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
