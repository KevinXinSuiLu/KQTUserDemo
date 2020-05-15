//
//  KQTDemo.swift
//  KQTUserDemo
//
//  Created by KanQi-iOS on 2020/5/15.
//  Copyright © 2020 KanQi. All rights reserved.
//

import UIKit

public class KQTDemo: UIViewController {

    
    @IBOutlet weak var testImage: UIImageView!
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        
//        self.testImage.image =  UIImage(named: "1", in: Bundle.sm_frameworkBundle(), compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        
    }


   
    
}
