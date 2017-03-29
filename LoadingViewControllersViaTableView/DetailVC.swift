//
//  DetailVC.swift
//  LoadingViewControllersViaTableView
//
//  Created by Jerrald Pieterman on 29-03-17.
//  Copyright © 2017 Jeppro. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var cellName = ""
    var indexPathRow: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "\(cellName) was tapped"
        
        print("indexpath.row: \(indexPathRow) was tapped")
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
    }

}
