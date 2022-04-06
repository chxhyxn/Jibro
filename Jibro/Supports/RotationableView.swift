//
//  RotationableView.swift
//  PointYouWant
//
//  Created by chxhyxn on 2022/03/30.
//

import UIKit
import Foundation

@IBDesignable class RotatableView: UIView {

    @objc @IBInspectable var rotationDegrees: Float = 0 {
        didSet {
            print("Setting angle to \(rotationDegrees)")
            let angle = NSNumber(value: rotationDegrees / 180.0 * Float.pi)
            layer.setValue(angle, forKeyPath: "transform.rotation.z")
        }
    }
}
