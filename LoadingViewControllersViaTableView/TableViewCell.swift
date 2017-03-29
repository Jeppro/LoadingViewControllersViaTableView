//
//  TableViewCell.swift
//  LoadingViewControllersViaTableView
//
//  Created by Jerrald Pieterman on 29-03-17.
//  Copyright © 2017 Jeppro. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellName: UILabel!
    
    
    func configureCell(name: String) {
        
        cellName.text = name
        
    }

}
