//
//  Base.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

class Base:NSObject {
    var name: String?
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("base - deinit")
    }
}
