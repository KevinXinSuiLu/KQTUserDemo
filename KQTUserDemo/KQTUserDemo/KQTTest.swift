//
//  KQTTest.swift
//  KQTUser
//
//  Created by KanQi-iOS on 2020/5/12.
//  Copyright © 2020 KanQi. All rights reserved.
//

import UIKit

public class KQTTest: NSObject {
    func test(){
        let frameworkName = "KQTUser.framework/"
        
        let image1 = UIImage.init(named: frameworkName + "images.bundle/1")!
        let imageData1 = image1.jpegData(compressionQuality: 1.0)
        let length = imageData1?.count ?? 0
       
        print("test 组件化测试 imageDataLength:\(length)")
    }
}
