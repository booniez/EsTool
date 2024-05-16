# EsTool

 [![CI Status](https://img.shields.io/travis/booniez/EsTool.svg?style=flat)](https://travis-ci.org/booniez/EsTool)
 [![Version](https://img.shields.io/cocoapods/v/EsTool.svg?style=flat)](https://cocoapods.org/pods/EsTool)
 [![License](https://img.shields.io/cocoapods/l/EsTool.svg?style=flat)](https://cocoapods.org/pods/EsTool)
 [![Platform](https://img.shields.io/cocoapods/p/EsTool.svg?style=flat)](https://cocoapods.org/pods/EsTool)

整理一些 Swift 常用的工具代码、扩展类

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
常见的用法

```Swift
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

```

## Requirements

## Installation

EsTool is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
全量安装
pod 'EsTool'

只安装 String
pod 'EsTool/String'

只安装 Date
pod 'EsTool/Date'
```


## Author

booniez, booniezbox@gamil.com

## License

EsTool is available under the MIT license. See the LICENSE file for more info.
