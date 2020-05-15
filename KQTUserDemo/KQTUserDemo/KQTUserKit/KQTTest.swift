//
//  KQTTest.swift
//  KQTUser
//
//  Created by KanQi-iOS on 2020/5/12.
//  Copyright © 2020 KanQi. All rights reserved.
//

import UIKit

public class KQTTest: NSObject {
   public func test(){
    
    
    
    let image1 = UIImage(named: "1", in: Bundle.sm_frameworkBundle(), compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    
    
//        let frameworkName = "Frameworks/KQTUser.framework/"
//
//        let image1 = UIImage.init(named: frameworkName + "images.bundle/1")!
        let imageData1 = image1.jpegData(compressionQuality: 1.0)
        let length = imageData1?.count ?? 0
       
        print("test 组件化测试 imageDataLength:\(length)")
    
    }
    
    public func createVC() -> KQTDemo{
        let vc = KQTDemo(nibName: "KQTDemo", bundle: Bundle.sm_frameworkBundle())
        return vc
        
    }
    
}


extension Bundle {
    static func sm_frameworkBundle() -> Bundle {
        let bundle = Bundle(for: KQTTest.self)
        if let path = bundle.path(forResource: "Resource", ofType: "bundle") {
            return Bundle(path: path)!
        }
        else {
            return bundle
        }
    }
}


/*
extension KQTTest {
    
    /**
     Loads a nib file with the same name as the generic view type `T` and returns
     the first view found in the nib file with matching type `T`. For example, if
     the generic type is `MyView`, a nib file named `MyView.nib` is loaded and the
     first top-level view of type `MyView` is returned. The main bundle is searched
     first followed by the SwiftMessages bundle.
     
     - Parameter filesOwner: An optional files owner.
     
     - Throws: `Error.CannotLoadViewFromNib` if a view matching the
       generic type `T` is not found in the nib.
     
     - Returns: An instance of generic view type `T`.
     */
    public class func viewFromNib<T: UIView>(_ filesOwner: AnyObject = NSNull.init()) throws -> T {
        let name = T.description().components(separatedBy: ".").last
        assert(name != nil)
        let view: T = try internalViewFromNib(named: name!, bundle: nil, filesOwner: filesOwner)
        return view
    }
    
    /**
     Loads a nib file with specified name and returns the first view found in the  nib file
     with matching type `T`. The main bundle is searched first followed by the SwiftMessages bundle.
     
     - Parameter name: The name of the nib file (excluding the .xib extension).
     - Parameter filesOwner: An optional files owner.
     
     - Throws: `Error.CannotLoadViewFromNib` if a view matching the
     generic type `T` is not found in the nib.
     
     - Returns: An instance of generic view type `T`.
     */
    public class func viewFromNib<T: UIView>(named name: String, filesOwner: AnyObject = NSNull.init()) throws -> T {
        let view: T = try internalViewFromNib(named: name, bundle: nil, filesOwner: filesOwner)
        return view
    }
    
    /**
     Loads a nib file with specified name in the specified bundle and returns the
     first view found in the  nib file with matching type `T`.
     
     - Parameter name: The name of the nib file (excluding the .xib extension).
     - Parameter bundle: The name of the bundle containing the nib file.
     - Parameter filesOwner: An optional files owner.
     
     - Throws: `Error.CannotLoadViewFromNib` if a view matching the
     generic type `T` is not found in the nib.
     
     - Returns: An instance of generic view type `T`.
     */
    public class func viewFromNib<T: UIView>(named name: String, bundle: Bundle, filesOwner: AnyObject = NSNull.init()) throws -> T {
        let view: T = try internalViewFromNib(named: name, bundle: bundle, filesOwner: filesOwner)
        return view
    }
    

    fileprivate class func internalViewFromNib<T: UIView>(named name: String, bundle: Bundle? = nil, filesOwner: AnyObject = NSNull.init()) throws -> T {
        let resolvedBundle: Bundle
        if let bundle = bundle {
            resolvedBundle = bundle
        } else {
            if Bundle.main.path(forResource: name, ofType: "nib") != nil {
                resolvedBundle = Bundle.main
            } else {
                resolvedBundle = Bundle.sm_frameworkBundle()
            }
        }
        let arrayOfViews = resolvedBundle.loadNibNamed(name, owner: filesOwner, options: nil) ?? []
        #if swift(>=4.1)
        guard let view = arrayOfViews.compactMap( { $0 as? T} ).first else { throw SwiftMessagesError.cannotLoadViewFromNib(nibName: name) }
        #else
        guard let view = arrayOfViews.flatMap( { $0 as? T} ).first else { throw SwiftMessagesError.cannotLoadViewFromNib(nibName: name) }
        #endif
        return view
    }
 
}
*/
