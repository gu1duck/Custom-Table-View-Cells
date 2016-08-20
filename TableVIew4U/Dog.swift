//
//  Dog.swift
//  TableVIew4U
//
//  Created by Jeremy Petter on 2016-08-17.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class Dog: NSObject {
    var name: String
    var image: UIImage

    init(name: String, image: UIImage) {
        self.name = name
        self.image = image
    }
}
