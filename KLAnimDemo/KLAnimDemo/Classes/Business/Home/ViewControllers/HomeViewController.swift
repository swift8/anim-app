//
//  HomeViewController.swift
//  KLAnimDemo
//
//  Created by 浩 胡 on 15/6/11.
//  Copyright (c) 2015年 siyan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON



class HomeViewController: UIViewController {

    var request: Alamofire.Request = Alamofire.request(.GET, "http://www.baidu.com/")

    override func viewDidLoad() {
        super.viewDidLoad()

        self.request.responseString { (request, response, body, error) in
            println("request ==== \(request),response ==== \(response), body=== \(body),  error === \(error)")
        }

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    


}

