//
//  ViewController.swift
//  BlueLibrary
//
//  Created by user on 5/26/15.
//  Copyright (c) 2015 YAMAHA. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // リクエスト
        let manager:AFHTTPRequestOperationManager = AFHTTPRequestOperationManager()
        let serializer:AFJSONRequestSerializer = AFJSONRequestSerializer()
        manager.requestSerializer = serializer
        manager.GET("http://ip.jsontest.com/", parameters: nil,
            success: {(operation: AFHTTPRequestOperation!, responsobject: AnyObject!) in
                println("Success!!")
                println(responsobject)
            },
            failure: {(operation: AFHTTPRequestOperation!, error: NSError!) in
                println("Error!!")
            }
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

