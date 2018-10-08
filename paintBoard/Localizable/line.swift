//
//  line.swift
//  paintBoard
//
//  Created by apple on 10/2/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation
import UIKit
class Line{
    
    var color :UIColor
    var start : CGPoint
    var end : CGPoint
    init(_start: CGPoint, _end: CGPoint, _color :UIColor){
        start = _start
        end = _end
        color = _color
    }
}
