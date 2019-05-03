//
//  ViewController.swift
//  flashlighT
//
//  Created by Genesis on 4/8/19.
//  Copyright © 2019 Genesis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    @IBAction func specialButton(_ sender: Any) {
        if thisView.backgroundColor == UIColor.black {
            thisView.backgroundColor = generateRandomColor()
        }else {
            thisView.backgroundColor = UIColor.black
        }
    }
    @IBOutlet var thisView: UIView!
    @IBOutlet var onOutlet: UIButton!
    @IBAction func regularButton(_ sender: Any) {
        if thisView.backgroundColor == UIColor.black {
            thisView.backgroundColor = UIColor.white
            onOutlet.setTitle("OFF", for: .normal)
            onOutlet.setTitleColor(UIColor.black, for: .normal)
        }else if  thisView.backgroundColor == UIColor.white {
            thisView.backgroundColor = UIColor.black
            onOutlet.setTitle("ON", for: .normal)
            onOutlet.setTitleColor(UIColor.white, for: .normal )
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

