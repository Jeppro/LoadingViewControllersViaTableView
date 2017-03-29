//
//  ViewController.swift
//  LoadingViewControllersViaTableView
//
//  Created by Jerrald Pieterman on 29-03-17.
//  Copyright © 2017 Jeppro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tableViewArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var i = 0
        while i < 10 {
            
            tableViewArray.append("cell \(i)")
            
            i += 1
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        let cellName = tableViewArray[index]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell {
            
            cell.configureCell(name: cellName)
            
            return cell
        }
        
        return UITableViewCell()
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC {
            
            let index = indexPath.row
            
            detailVC.cellName = tableViewArray[index]
            detailVC.indexPathRow = index
            
            self.present(detailVC, animated: true, completion: nil)
        }
        
    }

}

