//
//  StringUtils.swift
//  KLAnimDemo 字符串工具类
//
//  Created by 浩 胡 on 15/6/22.
//  Copyright (c) 2015年 siyan. All rights reserved.
//

import Foundation

extension String {

    // 分割字符
    func split(s:String)->[String] {
        if s.isEmpty {
            var x = [String]()
            for y in self {
                x.append(String(y))
            }
            return x
        }

        return self.componentsSeparatedByString(s)
    }

    // 去掉左右空格
    func trim()->String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }


    // 是否包含字符串
    func has(s:String)->Bool {
        if (self.rangeOfString(s) != nil) {
            return true
        } else {
            return false
        }
    }

    // 重复字符串
    func repeat(times: Int) -> String{
        var result = ""
        for i in 0...times {
            result += self
        }
        return result
    }

    // 反转
    func reverse()-> String {
        var s = self.split("").reverse()
        var x = ""
        for y in s{
            x += y
        }
        return x
    }

}