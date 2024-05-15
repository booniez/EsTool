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
        let timeStamp = 1589904000.0 // 时间戳以秒为单位
        let date = Date(timeIntervalSince1970: timeStamp)

        // 创建 DateFormatter 来格式化并打印日期
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        formatter.timeZone = TimeZone(abbreviation: "Asia/Shanghai") // 确保使用 UTC 时区
//        let dateString = formatter.string(from: date) // 转换 Date 对象为字符串

        print(date.formatToString(.utcWithXxxOffsetPattern)) // 应该打印出 "2020-05-20 00:00:00"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

