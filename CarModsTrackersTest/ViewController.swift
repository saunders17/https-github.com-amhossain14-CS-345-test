////
////  ViewController.swift
////  CarModsTrackersTest
////
////  Created by Hossain, Amir on 9/29/17.
////  Copyright © 2017 Hossain, Amir. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}
//
//
//  ViewController.swift
//  ButtonsAlerts
//
//  Created by GeggHarrison, Timothy S on 9/24/17.
//  Copyright © 2017 Tim Gegg-Harrison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let label1: UILabel
    private let label2: UILabel
    private let button: UIButton
    
    init() {
        label1 = UILabel()
        label2 = UILabel()
        button = UIButton(type: UIButtonType.custom)
        super.init(nibName: nil, bundle: nil)
        let screenSize: CGSize = UIScreen.main.bounds.size
        let centerX: CGFloat = screenSize.width / 2
        let centerY: CGFloat = screenSize.height / 2
        label1.text = "Top Label"
        label1.backgroundColor = UIColor.red
        label1.textColor = UIColor.gray
        label1.textAlignment = NSTextAlignment.center
        label1.frame = CGRect(x: centerX-75, y: 100, width: 150, height: 50)
        self.view.addSubview(label1)
        label2.text = "Bottom Label"
        label2.backgroundColor = UIColor.gray
        label2.textColor = UIColor.red
        label2.textAlignment = NSTextAlignment.center
        label2.frame = CGRect(x: centerX-75, y: screenSize.height-150, width: 150, height: 50)
        self.view.addSubview(label2)
        
        button.frame = CGRect(x: centerX-32, y: centerY-32, width: 64, height: 64)
        button.setImage(#imageLiteral(resourceName: "play.png"), for: UIControlState.normal)
        button.addTarget(self, action: #selector(ViewController.buttonPressed), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonPressed() {
        NSLog("Button was pressed")
        
        let alert: UIAlertController
            = UIAlertController(title: "Color Switch", message:
                "Do you want to switch the colors?", preferredStyle:
                UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style:
            UIAlertActionStyle.default, handler:
            {(action: UIAlertAction!) -> Void in
                if self.label1.backgroundColor == UIColor.red {
                    self.label1.backgroundColor = UIColor.gray
                    self.label1.textColor = UIColor.red
                    self.label2.backgroundColor = UIColor.red
                    self.label2.textColor = UIColor.gray
                }
                else {
                    self.label1.backgroundColor = UIColor.red
                    self.label1.textColor = UIColor.gray
                    self.label2.backgroundColor = UIColor.gray
                    self.label2.textColor = UIColor.red
                }
        }))
        alert.addAction(UIAlertAction(title: "No", style:
            UIAlertActionStyle.default, handler:
            {(action: UIAlertAction!) -> Void in
                
        }))
        self.present(alert, animated: true, completion:
            {() -> Void in
                
        })
    }
}

