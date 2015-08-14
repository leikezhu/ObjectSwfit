//
//  SwiftObject.swift
//  ObjectToSwfit
//
//  Created by 雷科柱 on 15/8/11.
//  Copyright (c) 2015年 雷科柱. All rights reserved.
//

import UIKit


@objc class SwiftObject: NSObject {
    func sayHello(greeting : String, withName name : String) ->String
    {
    
    var string = "Hi," + name
    string += greeting
    
    return string;
    }
    
    func hasAct(tag:Int) -> String
    {
        switch (tag)
        {
        case 1:return "Movie"
        case 2:return "CCTV"
        case 3:return "Sport TV"
        default:return "Area TV"
        }
        
    }
    
    override init()
    {
        println("act constructor is called.")
    }
    
    deinit
    {
        println("act destroyed is called.")
    }

    func testToObject()
    {
        var instanceOfCustomObject: OCChannel = OCChannel()
        instanceOfCustomObject.someProperty = "Hello World"
        println(instanceOfCustomObject.someProperty)
        instanceOfCustomObject.someMethod()
        let manager = AFHTTPRequestOperationManager()
        manager.GET(
            "https://zzpaytest.zhongsou.com/app_login/open",
            parameters: [
                "deviceid" : 9930333930203847,
                "imei":"7c0f6c7ee7e33868bac927e33070485f8c6cd755",
                "net":"WiFi",
                "timestamp":1439280304
            ],
            success: { (operation: AFHTTPRequestOperation!,
                responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) in
                println("Error: " + error.localizedDescription)
        })

    }
    
}
