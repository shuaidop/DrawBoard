//
//  Draw.swift
//  paintBoard
//
//  Created by apple on 10/2/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation
import UIKit
class Draw : UIView{
    var line: [Line] = []
    var lastPoint: CGPoint!
    var Dcolor = UIColor.gray
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        lastPoint = touch!.location(in: self)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        var newPoint = touch!.location(in: self)
        line.append(Line(_start: lastPoint,_end: newPoint, _color: Dcolor))
        lastPoint = newPoint
        self.setNeedsDisplay()
        print("line draw")
    }
    override func draw(_ rect: CGRect) {
        for line in line{
            var context = UIGraphicsGetCurrentContext()
            context?.setLineWidth(2.0)
            context?.move(to: CGPoint(x:line.start.x, y: line.start.y))
            context?.addLine(to: CGPoint(x: line.end.x, y: line.end.y))
            context?.setStrokeColor(Dcolor.cgColor)
            context?.strokePath()
        }
      
    }
}
