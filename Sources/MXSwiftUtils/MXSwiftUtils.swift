import UIKit

struct MXSwiftUtils {
    var text = "Hello, World!"
    
    /****跳转到应用系统设置 *****/
    static func openSystemSetup() {
        let url = URL(string: UIApplication.openSettingsURLString)
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: Dictionary(), completionHandler: nil)
        }
    }
    
    /**************获取设备信息**************/
    
    static func getAppVersion() -> String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    }
    
    static func getSystemVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    static func getSystemModel() -> String {
        return UIDevice.current.model
    }
    
    ///手机号正则匹配
    static func verifyPhoneNumber(phone: String) -> Bool {
        let phoneRegex: String = "^(1[3-9])\\d{9}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: phone)
    }
    
    /// 检测字符串是否为空
    static func stringIsBlank(string: String?) -> Bool{
        if let str = string {
            if str.count > 0 {
                return false
            }
        }
        return true
    }
    
    
}
