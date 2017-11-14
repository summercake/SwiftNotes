//
//  ViewController.swift
//  15-Closure
//
//  Created by jack on 11/14/17.
//  Copyright © 2017 jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tools : HttpTool = HttpTool()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        tools.loadData { (jsonData) -> () in
            print("get ViewController Data : \(jsonData)")
            self.view.backgroundColor = UIColor.redColor()
        }
    }
    
    deinit {
        print("ViewController -- deinit")
    }

}

