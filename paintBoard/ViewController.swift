//
//  ViewController.swift
//  paintBoard
//
//  Created by apple on 10/2/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var ColorSet = [UIColor.purple,UIColor.orange,UIColor.brown,UIColor.lightText]
    @IBAction func ChangBG(_ sender: UILongPressGestureRecognizer) {
        
        let number = Int(arc4random_uniform(UInt32(4)))
        view.backgroundColor =  ColorSet[number]
    }

    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var black: UIButton!
    @IBOutlet weak var Clear: UIButton!
    @IBOutlet weak var Canvas: Draw!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Clear.setTitle(NSLocalizedString("Clear", comment: ""), for: .normal)
        black.setTitle(NSLocalizedString("Black", comment: ""), for: .normal)
        red.setTitle(NSLocalizedString("Red", comment: ""), for: .normal)
        green.setTitle(NSLocalizedString("Green", comment: ""), for: .normal)
        blue.setTitle(NSLocalizedString("Blue", comment: ""), for: .normal)
    }
    @IBAction func clear(){
        Canvas.line = []
        Canvas.setNeedsDisplay()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ColorChange(button: UIButton){
        var color : UIColor!
        if (button==black){
            color = UIColor.black
        }else if (button==red){
            color=UIColor.red
        }else if (button==green){
            color=UIColor.green
        }else if (button==blue){
            color=UIColor.blue
        }else{
            color=UIColor.gray
        }
        Canvas.Dcolor=color
        
        
    }

}

