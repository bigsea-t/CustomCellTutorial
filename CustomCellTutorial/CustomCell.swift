//
//  CustomCellTableViewCell.swift
//  CustomCellTutorial
//
//  Created by Taikai Takeda on 1/7/15.
//  Copyright (c) 2015 bigsea. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var iconImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(friend :Friend) {
        self.name.text = friend.name
        var err: NSError?
        var imageData :NSData = NSData(contentsOfURL: friend.imageUrl!,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)!
        self.iconImage.image = UIImage(data:imageData)
    }
}
