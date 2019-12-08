//
//  PendingOperations.swift
//  iTunesClient
//
//  Created by Murray Fenstermaker on 11/30/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import Foundation

class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation]()
    
    let downloadQueue = OperationQueue()
    
}
