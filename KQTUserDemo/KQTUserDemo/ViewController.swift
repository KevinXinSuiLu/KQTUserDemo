//
//  ViewController.swift
//  KQTUserDemo
//
//  Created by KanQi-iOS on 2020/5/13.
//  Copyright © 2020 KanQi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        KQTTest().test()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            
            let vc = KQTTest.createVC()
                    
            
            self.present(vc, animated: true, completion: nil)
        }

    }


}

