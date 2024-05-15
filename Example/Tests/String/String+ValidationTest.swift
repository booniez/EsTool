//
//  String+ValidationTest.swift
//  EsTool_Tests
//
//  Created by yuanl on 2024/5/14.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import EsTool

class StringValidationTest: QuickSpec {
    override func spec() {
        describe("String extension") {
            // 测试 isEmpty 方法
            context("when checking isEmpty method") {
                it("returns true for an empty string") {
                    expect("".isEmpty()).to(beTrue())
                }
                
                it("returns false for a non-empty string") {
                    expect("hello".isEmpty()).to(beFalse())
                }
            }
            
            // 测试 isNotEmpty 方法
            context("when checking isNotEmpty method") {
                it("returns false for an empty string") {
                    expect("".isNotEmpty()).to(beFalse())
                }
                
                it("returns true for a non-empty string") {
                    expect("hello".isNotEmpty()).to(beTrue())
                }
            }

            // 测试 isBlank 方法
            context("when checking isBlank method") {
                it("returns true for a string with only whitespaces") {
                    expect("      ".isBlank()).to(beTrue())
                }
                
                it("returns false for a non-blank string") {
                    expect("hello world".isBlank()).to(beFalse())
                }
                
                it("returns true for an empty string") {
                    expect("".isBlank()).to(beTrue())
                }
            }

            // 测试 isNotBlank 方法
            context("when checking isNotBlank method") {
                it("returns false for a string with only whitespaces") {
                    expect("      ".isNotBlank()).to(beFalse())
                }
                
                it("returns true for a non-blank string") {
                    expect("hello world".isNotBlank()).to(beTrue())
                }
                
                it("returns false for an empty string") {
                    expect("".isNotBlank()).to(beFalse())
                }
            }

            // 测试 trim 方法
            context("when trimming string") {
                it("removes leading and trailing whitespaces") {
                    expect("   hello world   ".trim()).to(equal("hello world"))
                }
                
                it("returns the same string if no leading or trailing whitespaces") {
                    expect("hello".trim()).to(equal("hello"))
                }
            }
        }
    }
}
