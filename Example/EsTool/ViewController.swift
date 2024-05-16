//
//  ViewController.swift
//  EsTool
//
//  Created by booniez on 05/14/2024.
//  Copyright (c) 2024 booniez. All rights reserved.
//

import UIKit
import EsTool

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let str = " "
        print(str.isBlank()) // 应该打印出 true
        
        print(str.isEmpty) // 应该打印出 false
        
        print(str.isEmpty()) // 应该打印出 false
        
        let strTrim = "  你好 "
        // 去除首尾的空格
        print(strTrim.trim()) // 应该打印出 你好
        
        
        
        
        let timeStamp = 1589904000.0 // 时间戳以秒为单位
        let date = Date(timeIntervalSince1970: timeStamp)
        /// UTC时间，带XXX时区偏移：yyyy-MM-dd'T'HH:mm:ssXXX
        print(date.toString(.utcWithXxxOffsetPattern)) // 应该打印出 "2020-05-20T00:00:00+08:00"
        /// 标准日期时间格式，精确到秒：yyyy-MM-dd HH:mm:ss
        print(date.toString(.normDateTimePattern)) // 应该打印出 "2020-05-20 00:00:00"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

