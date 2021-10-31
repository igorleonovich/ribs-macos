//
//  Copyright (c) 2017. Uber Technologies
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#if os(iOS) || os(watchOS) || os(tvOS)
    import UIKit
    public typealias Window = UIWindow
    public typealias ViewController = UIViewController
    public typealias View = UIView
    public typealias Color = UIColor
    public typealias Button = UIButton
#elseif os(macOS)
    import Cocoa
    public typealias Window = NSWindow
    public typealias ViewController = NSViewController
    public typealias Color = NSColor
    public typealias Button = NSButton
    public typealias View = NSView
#endif


/// Basic interface between a `Router` and the UIKit `UIViewController`.
public protocol ViewControllable: AnyObject {

    var viewController: ViewController { get }
}

/// Default implementation on `UIViewController` to conform to `ViewControllable` protocol
public extension ViewControllable where Self: ViewController {

    var viewController: ViewController {
        return self
    }
}
