//
//  TestSwiftOne.swift
//  OC_Swift
//
//  Created by SJXC on 2021/9/13.
//

/**
 OC调用swift方法：
 1.在 Swift 文件中，若要规定固定的方法或属性暴露给 Objective-C 使用，可以在方法或属性前加上 @objc来声明。如果类是继承NSObject，那么要在非 private 的方法或属性前加上@objc（据说swift3.0之前都是系统自动加上的！！！），现在要手动加！。
 2.也可以在swift类的前面加上@objcMembers这个关键字；
 3.#import "SwiftDemo-swift.h",这个文件可以在Targets->Build Settings->Swift Compiler - General ->Objective-C Generated Interface Header Name里看到
4.设置Defines Module 为Yes
 */

import UIKit

@objcMembers
class TestSwiftOne: UIViewController {
    var name: String = ""
    var age: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let testView = ViewController()
        
        testView.password = "password"
        testView.height = 100
        
        testView.logMe("logMe", logYou: "logYou")
        testView.ocStaticFunc("ocStaticFunc")
    }

    @objc func test() {
        
    }
}
