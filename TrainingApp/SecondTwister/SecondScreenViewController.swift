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
    
    let array:[String] = ["Hello","Buy","Bla","Putin","Navalny","Yarosh","And TARUMP","Wow who are you","Hehehehe","Tatsi","Kent"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ind:String = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: ind, for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }
    

    

    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

  

}
