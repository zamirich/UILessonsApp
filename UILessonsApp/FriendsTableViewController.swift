//
//  FriendsTableViewController.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 31.01.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    //TODO to replace with "Friend" class/struct
    let friendsList = [["Shinzo Abe", "Ilham Aliyev", "Bashar al-Assad"], ["Joe Baden"], ["Rodrigo Duterte"], ["Recep Tayyip Erdoğan"], ["Xi Jinping", "Boris Johnson"], ["Sebastian Kurz"], ["Emannuel Macrone", "Angela Merkel", "Narendra Modi"], ["Benjamin Netanyahu"],  [ "Vladimir Putin"], ["Hassan Rouhani"]]
    let headersList = ["A", "B", "D", "E", "J", "K", "M", "N", "P", "R"]
    
    @IBOutlet weak var friendTableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "FriendTableViewCell", bundle: nil), forCellReuseIdentifier: "FriendCell")
    }


    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.friendsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friendsList[section].count
    }
    
    //this displays the cell with name and picture
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendTableViewCell
        cell.myLabel.text = self.friendsList[indexPath.section][indexPath.row]
        return cell
    }
    
    //this creates header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.headersList[section]
    }
    
    //this generates a photo collection screen
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "myFriendCollection")
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
