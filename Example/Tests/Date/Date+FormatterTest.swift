//
//  Date+FormatterTest.swift
//  EsTool_Tests
//
//  Created by yuanl on 2024/5/14.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import EsTool

class DateFormatterTypeTest: QuickSpec {
    override func spec() {
        describe("DateFormatterType") {
            var testDate: Date!
//            var formatter: DateFormatter!
            
            
            
            beforeSuite {
//                formatter = DateFormatter()
//                formatter.locale = Locale(identifier: "en_US_POSIX")
//                formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
//                formatter.timeZone = TimeZone(secondsFromGMT: 0)
//                testDate = formatter.date(from: "2020-05-20T00:00:00.000+0000")!
                testDate = Date(timeIntervalSince1970: 1589904000) // "2020-05-20 00:00:00" (GMT)
            }
            
            
            
            context("when formatting dates with DateFormatterType") {
                it("correctly formats normYearPattern") {
                    expect(testDate.toString(.normYearPattern)) == "2020"
                }
                
                it("correctly formats normMonthPattern") {
                    expect(testDate.toString(.normMonthPattern)) == "2020-05"
                }
                
                it("correctly formats simpleMonthPattern") {
                    expect(testDate.toString(.simpleMonthPattern)) == "202005"
                }
                
                it("correctly formats normDatePattern") {
                    expect(testDate.toString(.normDatePattern)) == "2020-05-20"
                }
                
                it("correctly formats normTimePattern") {
                    expect(testDate.toString(.normTimePattern)) == "00:00:00"
                }
                
                it("correctly formats normDateTimeMinutePattern") {
                    expect(testDate.toString(.normDateTimeMinutePattern)) == "2020-05-20 00:00"
                }
                
                it("correctly formats normDateTimePattern") {
                    expect(testDate.toString(.normDateTimePattern)) == "2020-05-20 00:00:00"
                }
                
                
                it("correctly formats normDateTimeMsPattern") {
                    expect(testDate.toString(.normDateTimeMsPattern)) == "2020-05-20 00:00:00.000"
                }
                
                it("correctly formats iso8601Pattern") {
                    expect(testDate.toString(.iso8601Pattern)) == "2020-05-20 00:00:00,000"
                }
                
                it("correctly formats chineseDatePattern") {
                    expect(testDate.toString(.chineseDatePattern)) == "2020年05月20日"
                }
                
                it("correctly formats chineseDateTimePattern") {
                    expect(testDate.toString(.chineseDateTimePattern)) == "2020年05月20日00时00分00秒"
                }
                
                it("correctly formats pureDatePattern") {
                    expect(testDate.toString(.pureDatePattern)) == "20200520"
                }
                
                it("correctly formats pureTimePattern") {
                    expect(testDate.toString(.pureTimePattern)) == "000000"
                }
                
                it("correctly formats pureDateTimePattern") {
                    expect(testDate.toString(.pureDateTimePattern)) == "20200520000000"
                }
                
                it("correctly formats pureDateTimeMsPattern") {
                    expect(testDate.toString(.pureDateTimeMsPattern)) == "20200520000000000"
                }
                
                it("correctly formats httpDatetimePattern") {
                    // 注意：这里的输出会依据时区和Locale而有所不同
                    expect(testDate.toString(.httpDatetimePattern)).to(beginWith("Wed, 20 May 2020 00:00:00"))
                }
                
                
                it("correctly formats jdkDateTimePattern") {
                    // 注意：这里的输出会依据时区和Locale而有所不同
                    expect(testDate.toString(.jdkDateTimePattern)).to(beginWith("Wed May 20 00:00:00 GMT+8 2020"))
                }
                
                it("correctly formats utcSimplePattern") {
                    expect(testDate.toString(.utcSimplePattern)) == "2020-05-20T00:00:00"
                }
                
                it("correctly formats utcSimpleMsPattern") {
                    expect(testDate.toString(.utcSimpleMsPattern)) == "2020-05-20T00:00:00.000"
                }
                
                it("correctly formats utcPattern") {
                    expect(testDate.toString(.utcPattern)) == "2020-05-20T00:00:00Z"
                }
                
                it("correctly formats utcWithZoneOffsetPattern") {
                    expect(testDate.toString(.utcWithZoneOffsetPattern)) == "2020-05-20T00:00:00+0800"
                }
                
                it("correctly formats utcWithXxxOffsetPattern") {
                    expect(testDate.toString(.utcWithXxxOffsetPattern)) == "2020-05-20T00:00:00+08:00"
                }
                
                it("correctly formats utcMsPattern") {
                    expect(testDate.toString(.utcMsPattern)) == "2020-05-20T00:00:00.000Z"
                }
                
                it("correctly formats utcMsWithZoneOffsetPattern") {
                    expect(testDate.toString(.utcMsWithZoneOffsetPattern)) == "2020-05-20T00:00:00.000+0800"
                }
                
                it("correctly formats utcMsWithXxxOffsetPattern") {
                    expect(testDate.toString(.utcMsWithXxxOffsetPattern)) == "2020-05-20T00:00:00.000+08:00"
                }
                
                afterSuite {
//                    formatter = nil
                }
            }
            
        }
    }
}
