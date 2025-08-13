//
//  MealDetailViewController.swift
//  CodePath Capstone Project - Summer 2025
//
//  Created by WanRong Wu on 8/6/25.
//

import UIKit

class MealDetailViewController: UIViewController {
    @IBOutlet weak var mealImageView: UIImageView!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var mealRatingLabel: UILabel!
    
    @IBOutlet weak var mealDescriptionLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealNameLabel.text = meal.name
        mealRatingLabel.text = "Average: " + drawStars(num: meal.avgRating)
        mealDescriptionLabel.text = meal.description
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
