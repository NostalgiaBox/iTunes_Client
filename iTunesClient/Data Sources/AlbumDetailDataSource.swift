//
//  AlbumDetailDataSource.swift
//  iTunesClient
//
//  Created by Murray Fenstermaker on 11/28/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import Foundation
import UIKit

class AlbumDetailDataSource: NSObject, UITableViewDataSource {
    
    private var songs: [Song]
    
    init(songs: [Song]){
        self.songs = songs
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SongCell.reuseIdentifier, for: indexPath) as! SongCell
        
        let song = songs[indexPath.row]
        let viewModel = SongViewModel(song: song)
        
        cell.songTitleLabel.text = viewModel.title
        cell.songRuntimeLabel.text = viewModel.runtime
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Tracks"
        default: return nil
        }
    }
    
    func update(with songs: [Song]){
        self.songs = songs
    }
}
