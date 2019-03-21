//
//  ViewEX.swift
//  UIView oneLineCodeAnimation extension
//
//  Created by amin sadeghian on 19/24/17.
//  Copyright © 2019 aminsadeghian. All rights reserved.
//

import UIKit
import QuartzCore
extension UIView {

    func move(x: CGFloat,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.x = x
        }
        animation.startAnimation(afterDelay: delay)
    }
    func move(x: CGFloat,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.x = x
        }
        animation.startAnimation(afterDelay: delay)
    }
    func move(y: CGFloat,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.y = y
        }
        animation.startAnimation(afterDelay: delay)
    }
    func move(y: CGFloat,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.y = y
        }
        animation.startAnimation(afterDelay: delay)
    }
    func move(to: CGPoint,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.position = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func move(to: CGPoint,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.position = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func transform3D(to: CATransform3D,
                     duration: CFTimeInterval,
                     curve: UITimingCurveProvider,
                     delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.transform3D = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func transform3D(to: CATransform3D,
                     duration: CFTimeInterval,
                     ratio: CGFloat,
                     delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.transform3D = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func transform(to: CGAffineTransform,
                   duration: CFTimeInterval,
                   curve: UITimingCurveProvider,
                   delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.transform = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func transform(to: CGAffineTransform,
                   duration: CFTimeInterval,
                   ratio: CGFloat,
                   delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.transform = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(to: CGSize,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.size = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(to: CGSize,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.size = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(height: CGFloat,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.height = height
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(height: CGFloat,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.height = height
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(width: CGFloat,
              duration: CFTimeInterval,
              curve: UITimingCurveProvider,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.width = width
        }
        animation.startAnimation(afterDelay: delay)
    }
    func size(width: CGFloat,
              duration: CFTimeInterval,
              ratio: CGFloat,
              delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, dampingRatio: ratio) {
            self.width = width
        }
        animation.startAnimation(afterDelay: delay)
    }
    func opacity(to: CGFloat,
                 duration: CFTimeInterval,
                 curve: UITimingCurveProvider,
                 delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.alpha  = to
        }
        animation.startAnimation(afterDelay: delay)
    }
    func background(color: UIColor,
                    duration: CFTimeInterval,
                    curve: UITimingCurveProvider,
                    delay: CFTimeInterval){
        let animation = UIViewPropertyAnimator(duration: duration, timingParameters: curve)
        animation.addAnimations {
            self.backgroundColor  = color
        }
        animation.startAnimation(afterDelay: delay)
    }

    // faster get & set essential properties
    var opacity: CGFloat{
        get{return alpha}
        set{alpha = newValue}
    }
    var shadowColor: CGColor{
        get{return layer.shadowColor!}
        set{layer.shadowColor = newValue}
    }
    var shadowRadius: CGFloat{
        get{return layer.shadowRadius}
        set{layer.shadowRadius = newValue}
    }
    var shadowOpacity: Float{
        get{return layer.shadowOpacity}
        set{layer.shadowOpacity = newValue}
    }
    var shadowOffset: CGSize{
        get{return layer.shadowOffset}
        set{layer.shadowOffset = newValue}
    }
    var shadowPath: CGPath{
        get{return layer.shadowPath!}
        set{layer.shadowPath = newValue}
    }
    var borderWidth: CGFloat{
        get{return layer.borderWidth}
        set{layer.borderWidth = newValue}
    }
    var borderColor: CGColor{
        get{return layer.borderColor!}
        set{layer.borderColor = newValue}
    }
    var cornerRadius: CGFloat{
        get{return layer.cornerRadius}
        set{layer.cornerRadius = newValue}
    }
    var position: CGPoint{
        get{return layer.position}
        set{layer.position = newValue}
    }
    var x: CGFloat{
        get{return layer.position.x}
        set{layer.position.x = newValue}
    }
    var y: CGFloat{
        get{return layer.position.y}
        set{layer.position.y = newValue}
    }
    var z: CGFloat{
        get{return layer.zPosition}
        set{layer.zPosition = newValue}
    }
    var size: CGSize{
        get{return layer.frame.size}
        set{layer.frame.size = newValue}
    }
    var width: CGFloat{
        get{return bounds.size.width}
        set{bounds.size.width = newValue}
    }
    var height: CGFloat{
        get{return bounds.size.height}
        set{bounds.size.height = newValue}
    }
    var anchorPoint: CGPoint{
        get{return layer.anchorPoint}
        set{layer.anchorPoint = newValue}
    }
    var transform3D: CATransform3D{
        get{return layer.transform}
        set{layer.transform = newValue}
    }
    
    // faster set border and shadow
    func border(color: UIColor, width: CGFloat){
        self.borderColor = color.cgColor
        self.borderWidth = width
    }
    func shadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: CGFloat){
        self.shadowOffset = offset
        self.shadowColor = color.cgColor
        self.shadowRadius = radius
        self.shadowOpacity = Float(opacity)
    }
}

let curveEaseIn01 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.47, y: 0), controlPoint2: CGPoint(x: 0.745, y: 0.715))
let curveEaseOut01 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.39, y: 0.575), controlPoint2: CGPoint(x: 0.565, y: 1))
let curveEaseInOut01 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.445, y: 0.05), controlPoint2: CGPoint(x: 0.55, y: 0.95))
let curveEaseIn02 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.55, y: 0.085), controlPoint2: CGPoint(x: 0.68, y: 0.53))
let curveEaseOut02 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.25, y: 0.46), controlPoint2: CGPoint(x: 0.45, y: 0.94))
let curveEaseInOut02 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.455, y: 0.03), controlPoint2: CGPoint(x: 0.515, y: 0.995))
let curveEaseIn03 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.55, y: 0.055), controlPoint2: CGPoint(x: 0.675, y: 0.19))
let curveEaseOut03 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.215, y: 0.61), controlPoint2: CGPoint(x: 0.355, y: 1))
let curveEaseInOut03 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.645, y: 0.045), controlPoint2: CGPoint(x: 0.355, y: 1))
let curveEaseIn04 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.895, y: 0.03), controlPoint2: CGPoint(x: 0.685, y: 0.22))
let curveEaseOut04 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.165, y: 0.84), controlPoint2: CGPoint(x: 0.44, y: 1))
let curveEaseInOut04 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.77, y: 0), controlPoint2: CGPoint(x: 0.175, y: 1))
let curveEaseIn05 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.755, y: 0.05), controlPoint2: CGPoint(x: 0.855, y: 0.06))
let curveEaseOut05 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.23, y: 1), controlPoint2: CGPoint(x: 0.32, y: 1))
let curveEaseInOut05 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.86, y: 0), controlPoint2: CGPoint(x: 0.07, y: 1))
let curveEaseIn06 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.95, y: 0.05), controlPoint2: CGPoint(x: 0.795, y: 0.035))
let curveEaseOut06 = UICubicTimingParameters(controlPoint1: CGPoint(x: 0.19, y: 1), controlPoint2: CGPoint(x: 0.22, y: 1))
let curveEaseInOut06 = UICubicTimingParameters(controlPoint1: CGPoint(x: 1, y: 0), controlPoint2: CGPoint(x: 0, y: 1))
