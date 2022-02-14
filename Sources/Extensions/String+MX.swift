//
//  File.swift
//  
//
//  Created by 刘明昕 on 2022/2/14.
//

import UIKit

public extension String {
    ///文字宽
    func mx_widthForComment(font: UIFont, height: CGFloat = 15) -> CGFloat {
        let rect = NSString(string: self).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.width)
    }

    ///文字高
    func mx_heightForComment(font: UIFont, width: CGFloat) -> CGFloat {
        let rect = NSString(string: self).boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.height)
    }
    ///文字高
    func mx_heightForComment(font: UIFont, width: CGFloat, maxHeight: CGFloat) -> CGFloat {
        let height = self.mx_heightForComment(font: font, width: width)
        return height > maxHeight ? maxHeight : height
    }
}
