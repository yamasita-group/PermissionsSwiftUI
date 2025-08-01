//
//  String.swift
//  
//
//  Created by Jevon Mao on 12/27/21.
//

import Foundation

extension String {
    var localized: String {
        // 1. 先尝试读取 App (Bundle.main) 的翻译
        let appValue = NSLocalizedString(self, bundle: .main, comment: "")
        if appValue != self {
            return appValue
        }

        // 2. 没有 → 再从 Swift Package 自己的资源取
        return NSLocalizedString(self, tableName: nil, bundle: .module, value: "", comment: "")
    }
}
