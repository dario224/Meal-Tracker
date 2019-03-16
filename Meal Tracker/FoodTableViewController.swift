//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Gio Lopez on 3/16/19.
//  Copyright © 2019 Giovani Lopez. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
    
    

    let breakfast1 = Food(name: "Cereal", description: "Lucky Charms")
    let breakfast2 = Food(name: "Oatmeal", description: "Apple Oatmeal")
    let breakfast3 = Food(name: "Eggs", description: "Sunny Side Up")
    let breakfast = Meal(name: "Breakfast", food: [breakfast1, breakfast2, breakfast3])
        
    let lunch1 = Food(name: "Sandwich", description: "Turkey and Cheese")
    let lunch2 = Food(name: "Salad", description: "Ceasar Salad")
        let lunch3 = Food(name: "Cheesebuger", description: "Bacon Cheeseburger")
        let lunch = Meal(name: "Lunch", food: [lunch1, lunch2, lunch3])
        
        let dinner1 = Food(name: "Steak", description: "Well Done Steak")
        let dinner2 = Food(name: "Pizza", description: "Pepperoni Pizza")
        let dinner3 = Food(name: "Pasta", description: "Lasgna")
        let dinner = Meal(name: "Dinner", food: [dinner1, dinner2, dinner3])
        
        return [breakfast, lunch, dinner]
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let eachFood = meal.food[indexPath.row]
        cell.textLabel?.text = eachFood.name
        cell.detailTextLabel?.text = eachFood.description
        cell.showsReorderControl = true
        
        

        return cell
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}
