//
//  MealCell.swift
//  CodePath Capstone Project - Summer 2025
//
//  Created by WanRong Wu on 8/6/25.
//

import UIKit

class MealCell: UITableViewCell {

    @IBOutlet weak var mealImageView: UIImageView!
    
    @IBOutlet weak var mealNameLabel: UILabel!
        
    @IBOutlet weak var mealRatingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
