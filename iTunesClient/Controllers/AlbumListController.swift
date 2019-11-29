//
//  AlbumListController.swift
//  iTunesClient
//
//  Created by Murray Fenstermaker on 11/28/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {
    
    private struct Constants {
        static let AlbumCellHeight: CGFloat = 80
    }

    var artist: Artist!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = artist.name
    }

    //MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellHeight
    }
    
    
}
