//
//  ThirdTableViewController.swift
//  TrainingApp
//
//  Created by Andrei Yarash on 3/27/18.
//  Copyright © 2018 Andrei Yarash. All rights reserved.
//

import UIKit

class ThirdTableViewController: UITableViewController {

    var arrayDigits:[Int] = [1,2,3,4,5,6,7,8,9,0,5,54,5,6765,7,657,657,56,756,75,67,567,567,567,56,756,7,567,56,756,7,56,756,7,567,567,56,756,7,567,56,756,7,567,567,56,75,7,57,5,75,67,57,657,567,567,56,756,7,567,56,756,756,8,789,79,078,97,7,76,45,43,32,423,423,434,55,6]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
print("working.....")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayDigits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(arrayDigits[indexPath.row])
        cell.detailTextLabel?.text = String(arrayDigits[indexPath.row + 1])
        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let removedItem = arrayDigits.remove(at: sourceIndexPath.row)
        arrayDigits.insert(removedItem, at: destinationIndexPath.row)
        tableView.reloadData()
        
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arrayDigits.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .right)
        }
        else if editingStyle == .insert{
            tableView.insertRows(at: [indexPath], with: .left)
        }
    }
    


    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        tableView.reloadData()
    }
    let ind:String = "SegueFromCell"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ind {
            let dest = segue.destination as! CreateViewController
            let index = tableView.indexPathForSelectedRow
            dest.new = String(arrayDigits[index!.row])
        }
        
    }
    

}
