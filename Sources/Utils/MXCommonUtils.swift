//
//  File.swift
//  
//
//  Created by 刘明昕 on 2022/2/14.
//

import UIKit

public struct MXCommonUtils {
    var text = "Hello, World!"
    
    ///跳转到应用系统设置
    public static func openSystemSetup() {
        let url = URL(string: UIApplication.openSettingsURLString)
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: Dictionary(), completionHandler: nil)
        }
    }
    ///打开链接
    public static func openUrl(urlStr: String) {
        guard let url = URL(string: urlStr) else {
            return
        }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: Dictionary(), completionHandler: nil)
        }
    }
    
    public static func getRootViewController(viewController: UIViewController) -> UIViewController {
        let vc: UIViewController
        if let nav = viewController as? UINavigationController {
            vc = nav.viewControllers.first!
        }else {
            vc = viewController
        }
        return vc
    }
    
    ///获取App版本号
    public static func getAppVersion() -> String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    }
    
    ///获取系统版本
    public static func getSystemVersion() -> String {
        return UIDevice.current.systemVersion
    }
    ///获取设备类型
    public static func getDeviceModel() -> String {
        return UIDevice.current.model
    }
    
    /// 检测字符串是否为空
    public static func stringIsBlank(string: String?) -> Bool{
        if let str = string {
            if str.count > 0 {
                return false
            }
        }
        return true
    }
    
    
}

