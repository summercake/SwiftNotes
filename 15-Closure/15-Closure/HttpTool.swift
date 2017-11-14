//
//  HttpTool.swift
//  15-Closure
//
//  Created by jack on 11/14/17.
//  Copyright © 2017 jack. All rights reserved.
//

import UIKit

class HttpTool: NSObject {
    // Closure Type must use (param) -> (return)
    func loadData(callBack : (jsonData : String)->()){
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            print("send network request \(NSThread.currentThread())")
            
            dispatch_sync(dispatch_get_main_queue(),{ () -> Void in
                print("get data, and then, run callback : \(NSThread.currentThread())")
                callBack(jsonData: "json Data")
            })
        }
    }
}	
