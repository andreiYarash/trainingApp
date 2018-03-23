//
//  SecondScreenViewController.swift
//  TrainingApp
//
//  Created by Andrei Yarash on 3/22/18.
//  Copyright © 2018 Andrei Yarash. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    var simpleModel = Title()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }

  

}
