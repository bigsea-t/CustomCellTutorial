//
//  Friend.swift
//  CustomCellTutorial
//
//  Created by Taikai Takeda on 1/7/15.
//  Copyright (c) 2015 bigsea. All rights reserved.
//

import Foundation

class Friend : NSObject {
    var name:NSString
    var imageUrl:NSURL?
    
    init(name: String, imageUrl: NSURL?){
        self.name = name
        self.imageUrl = imageUrl
    }
}