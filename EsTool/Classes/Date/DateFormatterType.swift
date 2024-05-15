//
//  DateFormatterType.swift
//  EsTool
//
//  Created by yuanl on 2024/5/15.
//

import Foundation

public enum DateFormatterType {
    /// 年格式：yyyy
    case normYearPattern
    /// 年月格式：yyyy-MM
    case normMonthPattern
    /// 简单年月格式：yyyyMM
    case simpleMonthPattern
    /// 标准日期格式：yyyy-MM-dd
    case normDatePattern
    /// 标准时间格式：HH:mm:ss
    case normTimePattern
    /// 标准日期时间格式，精确到分：yyyy-MM-dd HH:mm
    case normDateTimeMinutePattern
    /// 标准日期时间格式，精确到秒：yyyy-MM-dd HH:mm:ss
    case normDateTimePattern
    /// 标准日期时间格式，精确到毫秒：yyyy-MM-dd HH:mm:ss.SSS
    case normDateTimeMsPattern
    /// ISO8601日期时间格式，精确到毫秒：yyyy-MM-dd HH:mm:ss,SSS
    case iso8601Pattern
    /// 标准日期格式：yyyy年MM月dd日
    case chineseDatePattern
    /// 标准日期时间格式：yyyy年MM月dd日HH时mm分ss秒
    case chineseDateTimePattern
    /// 纯净日期格式：yyyyMMdd
    case pureDatePattern
    /// 纯净时间格式：HHmmss
    case pureTimePattern
    /// 纯净日期时间格式：yyyyMMddHHmmss
    case pureDateTimePattern
    /// 纯净日期时间格式，精确到毫秒：yyyyMMddHHmmssSSS
    case pureDateTimeMsPattern
    /// HTTP头中日期时间格式：EEE, dd MMM yyyy HH:mm:ss z
    case httpDatetimePattern
    /// JDK中日期时间格式：EEE MMM dd HH:mm:ss zzz yyyy
    case jdkDateTimePattern
    /// ISO8601时间：yyyy-MM-dd'T'HH:mm:ss
    case utcSimplePattern
    /// ISO8601时间，精确到毫秒：yyyy-MM-dd'T'HH:mm:ss.SSS
    case utcSimpleMsPattern
    /// UTC时间：yyyy-MM-dd'T'HH:mm:ss'Z'
    case utcPattern
    /// UTC时间，带时区偏移：yyyy-MM-dd'T'HH:mm:ssZ
    case utcWithZoneOffsetPattern
    /// UTC时间，带XXX时区偏移：yyyy-MM-dd'T'HH:mm:ssXXX
    case utcWithXxxOffsetPattern
    /// UTC时间，精确到毫秒：yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
    case utcMsPattern
    /// UTC时间，带时区偏移，精确到毫秒：yyyy-MM-dd'T'HH:mm:ss.SSSZ
    case utcMsWithZoneOffsetPattern
    /// UTC时间，带XXX时区偏移，精确到毫秒：yyyy-MM-dd'T'HH:mm:ss.SSSXXX
    case utcMsWithXxxOffsetPattern
}

extension DateFormatterType {
    var formatterPattern: String {
        switch self {
        case .normYearPattern:
            return "yyyy"
        case .normMonthPattern:
            return "yyyy-MM"
        case .simpleMonthPattern:
            return "yyyyMM"
        case .normDatePattern:
            return "yyyy-MM-dd"
        case .normTimePattern:
            return "HH:mm:ss"
        case .normDateTimeMinutePattern:
            return "yyyy-MM-dd HH:mm"
        case .normDateTimePattern:
            return "yyyy-MM-dd HH:mm:ss"
        case .normDateTimeMsPattern:
            return "yyyy-MM-dd HH:mm:ss.SSS"
        case .iso8601Pattern:
            return "yyyy-MM-dd HH:mm:ss,SSS"
        case .chineseDatePattern:
            return "yyyy年MM月dd日"
        case .chineseDateTimePattern:
            return "yyyy年MM月dd日HH时mm分ss秒"
        case .pureDatePattern:
            return "yyyyMMdd"
        case .pureTimePattern:
            return "HHmmss"
        case .pureDateTimePattern:
            return "yyyyMMddHHmmss"
        case .pureDateTimeMsPattern:
            return "yyyyMMddHHmmssSSS"
        case .httpDatetimePattern:
            return "EEE, dd MMM yyyy HH:mm:ss z"
        case .jdkDateTimePattern:
            return "EEE MMM dd HH:mm:ss zzz yyyy"
        case .utcSimplePattern:
            return "yyyy-MM-dd'T'HH:mm:ss"
        case .utcSimpleMsPattern:
            return "yyyy-MM-dd'T'HH:mm:ss.SSS"
        case .utcPattern:
            return "yyyy-MM-dd'T'HH:mm:ss'Z'"
        case .utcWithZoneOffsetPattern:
            return "yyyy-MM-dd'T'HH:mm:ssZ"
        case .utcWithXxxOffsetPattern:
            return "yyyy-MM-dd'T'HH:mm:ssXXX"
        case .utcMsPattern:
            return "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        case .utcMsWithZoneOffsetPattern:
            return "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        case .utcMsWithXxxOffsetPattern:
            return "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        }
    }
}
