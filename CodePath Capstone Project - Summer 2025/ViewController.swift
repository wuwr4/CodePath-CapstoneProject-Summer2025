//
//  ViewController.swift
//  CodePath Capstone Project - Summer 2025
//
//  Created by WanRong Wu on 8/6/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! MealCell
        
        cell.mealNameLabel.text = meals[indexPath.row].name
        cell.mealRatingLabel.text = "Rating: " + drawStars(num: meals[indexPath.row].avgRating)
        
        if !meals[indexPath.row].vegetarian
        {
            cell.mealVegetarianLabel.text = ""
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let selectedIndexPath = tableView.indexPathForSelectedRow
        else {return}
        
        let selectedMeal = meals[selectedIndexPath.row]
        
        guard let detailViewController = segue.destination as? MealDetailViewController else {return}
        
        detailViewController.meal = selectedMeal
    }
    
    var meals: [Meal] = [Meal]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        meals = createMockMeals()
    }
    
    func createMockMeals() -> [Meal]
    {
        let meal1 = Meal(name: "Mac N Cheese",
                         description: "Creamy macaroni with a blend of parmasan and sharp cheddar",
                         avgRating: 3,
                         vegetarian: false)
        
        let meal2 = Meal(name: "Teriyaki Chicken and Rice",
                         description: "Juicy, seared chicken thighs and tangy teriyaki sauce with fluffy jasmine rice",
                         avgRating: 5,
                         vegetarian: false)
        
        let meal3 = Meal(name: "Spaghetti and Meatballs",
                         description: "Spaghetti noodles cooked al dente served with juicy Italian meatballs",
                         avgRating: 3,
                         vegetarian: false)
        
        let meal4 = Meal(name: "Caesar Salad",
                         description: "Crisp romaine lettuce tossed with creamy Caesar dressing, crunchy croutons, and parmesan cheese",
                         avgRating: 4,
                         vegetarian: true)

        let meal5 = Meal(name: "BBQ Pulled Pork Sandwich",
                         description: "Slow-cooked pulled pork in smoky barbecue sauce served on a toasted brioche bun",
                         avgRating: 4,
                         vegetarian: false)

        let meal6 = Meal(name: "Vegetable Stir Fry",
                         description: "Colorful mix of bell peppers, broccoli, carrots, and snap peas stir-fried in a savory soy-ginger sauce",
                         avgRating: 2,
                         vegetarian: true)

        let meal7 = Meal(name: "Margherita Pizza",
                         description: "Thin crust pizza topped with fresh mozzarella, ripe tomatoes, and fragrant basil leaves",
                         avgRating: 5,
                         vegetarian: true)

        let meal8 = Meal(name: "Beef Tacos",
                         description: "Seasoned ground beef in soft corn tortillas with lettuce, cheddar, and salsa",
                         avgRating: 4,
                         vegetarian: false)

        return [meal1, meal2, meal3, meal4, meal5, meal6, meal7, meal8]
    }
    
    func drawStars(num: Int) -> String
    {
        var stars = ""
        for _ in 0..<num
        {
            stars += "★"
        }
        
        return stars
    }


}

