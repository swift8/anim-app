//
//  NetTest.swift
//  KLAnimDemo
//
//  Created by 浩 胡 on 15/6/22.
//  Copyright (c) 2015年 siyan. All rights reserved.
//

import Foundation
import Alamofire


class NetTest {

    static func testMethod() {

        var request: Alamofire.Request = Alamofire.request(.GET, "http://www.weather.com.cn/data/cityinfo/101010100.html")

        request.responseJSON { (_, _, JSON, error) in

            if let weatherinfo: AnyObject? = JSON!["weatherinfo"] {

                println(weatherinfo)

                if let img1: AnyObject? = weatherinfo!["img1"] {
                    println("reverse1 = \((img1 as! String).reverse())")
                }

            } else {
                println("获取数据失败")
            }

        }
        
        
    }
    
}