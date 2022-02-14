//
//  File.swift
//  
//
//  Created by 刘明昕 on 2022/2/14.
//

import Foundation

struct MXRegexUtils {
    
    ///手机号正则匹配
    public static func verifyPhoneNumber(phone: String) -> Bool {
        let phoneRegex: String = "^(1[3-9])\\d{9}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: phone)
    }
    
}
