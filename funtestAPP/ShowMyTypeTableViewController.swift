//
//  ShowMyTypeTableViewController.swift
//  funtestAPP
//
//  Created by Mac on 2017/8/3.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
class ShowMyTypeTableViewController: UITableViewController {
    
    @IBOutlet weak var genderSegment: UISegmentedControl!

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var bearImageView: UIImageView!
    
    @IBOutlet weak var girlImageView1: UIImageView!
    
    @IBOutlet weak var girlImageView2: UIImageView!
    
    @IBOutlet weak var girlImageView3: UIImageView!
    
    @IBOutlet weak var girlImageView4: UIImageView!
    
    @IBOutlet weak var boyImageView1: UIImageView!
    
    @IBOutlet weak var boyImageView2: UIImageView!
    
    @IBOutlet weak var boyImageView3: UIImageView!
    
    @IBOutlet weak var boyImageView4: UIImageView!
    
    @IBOutlet weak var showTextView: UITextView!
    
    @IBAction func toEndEditTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func resultBottom(_ sender: Any) {
        
        
        if nameTextField.text?.isEmpty == true {
            showTextView.text = "尚未輸入大名呦！"
            
        }
        else if  monthTextField.text?.isEmpty == true || dateTextField.text?.isEmpty == true {
            showTextView.text = "尚未輸入完整生日喔"
        }
        else {
            var finalDataReference1 : Int = 0
            var finalDataReference : Int = 0
            let monthData = Int(monthTextField.text!)
            let dateData = Int(dateTextField.text!)
            
            let dateReference = (monthData!/10) + (monthData!%10) + (dateData!/10) + (dateData!%10)
            finalDataReference1 = Int((dateReference/10) + (dateReference%10))
            finalDataReference = Int((finalDataReference1/10) + (finalDataReference1%10))
            bearImageView.isHidden = true
            showTextView.text = "\(nameTextField.text!)會與你共度一生的異性類型是..."
            if genderSegment.selectedSegmentIndex == 0 {
                switch finalDataReference {
                case 0...1 :
                    girlImageView1.self.isHidden = false
                    girlImageView2.self.isHidden = true
                    girlImageView3.self.isHidden = true
                    girlImageView4.self.isHidden = true
                case 2...4 :
                    girlImageView2.self.isHidden = false
                    girlImageView1.self.isHidden = true
                    girlImageView3.self.isHidden = true
                    girlImageView4.self.isHidden = true
                case 5...7 :
                    girlImageView3.self.isHidden = false
                    girlImageView2.self.isHidden = true
                    girlImageView1.self.isHidden = true
                    girlImageView4.self.isHidden = true
                case 8...9 :
                    girlImageView4.self.isHidden = false
                    girlImageView1.self.isHidden = true
                    girlImageView3.self.isHidden = true
                    girlImageView1.self.isHidden = true
                default:
                    girlImageView1.self.isHidden = true
                    girlImageView2.self.isHidden = true
                    girlImageView3.self.isHidden = true
                    girlImageView4.self.isHidden = true
                    bearImageView.isHidden = false
                    }
            }
            else if genderSegment.selectedSegmentIndex == 1 {
                switch finalDataReference {
                case 0...1 :
                    boyImageView1.self.isHidden = false
                    boyImageView2.self.isHidden = true
                    boyImageView3.self.isHidden = true
                    boyImageView4.self.isHidden = true
                case 2...4 :
                    boyImageView2.self.isHidden = false
                    boyImageView1.self.isHidden = true
                    boyImageView3.self.isHidden = true
                    boyImageView4.self.isHidden = true
                case 5...7 :
                    boyImageView3.self.isHidden = false
                    boyImageView2.self.isHidden = true
                    boyImageView1.self.isHidden = true
                    boyImageView4.self.isHidden = true
                case 8...9 :
                    boyImageView4.self.isHidden = false
                    boyImageView1.self.isHidden = true
                    boyImageView3.self.isHidden = true
                    boyImageView1.self.isHidden = true
                default:
                    boyImageView1.self.isHidden = true
                    boyImageView2.self.isHidden = true
                    boyImageView3.self.isHidden = true
                    boyImageView4.self.isHidden = true
                    bearImageView.isHidden = false
                }
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


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


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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

}
