//
//  CALayerEX.swift
//  CALayer oneLineCodeAnimation extension
//
//  Created by amin sadeghian on 9/24/17.
//  Copyright © 2019 aminsadeghian. All rights reserved.
//

import UIKit
import QuartzCore
extension CALayer{
    
    // Easing Animation
    func transform3D(to: CATransform3D,
                     duration: CFTimeInterval,
                     timingFunction: CAMediaTimingFunction,
                     delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "transform")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = to
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func anchor(point: CGPoint,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "anchorPoint")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = point
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func scale(to: CGSize,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = to
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func scale(x: CGFloat,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "transform.scale.x")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = x
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func scale(y: CGFloat,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "transform.scale.y")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = y
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func scale(z: CGFloat,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "transform.scale.z")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = z
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func size(to: CGSize,
              duration: CFTimeInterval,
              timingFunction : CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "bounds.size")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = to
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func size(width: CGFloat,
              duration: CFTimeInterval,
              timingFunction : CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "bounds.size.width")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = width
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func size(height: CGFloat,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "bounds.size.height")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = height
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func move(to: CGPoint,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = to
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func move(x : CGFloat,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = x
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func move(y: CGFloat,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = y
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func rotate(degrees: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.timingFunction = timingFunction
        animation.toValue = degreesToRadians(degrees)
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.duration = duration
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func rotate(x: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "transform.rotation.x")
        animation.timingFunction = timingFunction
        animation.toValue = degreesToRadians(x)
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.duration = duration
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func rotate(y: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "transform.rotation.y")
        animation.timingFunction = timingFunction
        animation.toValue = degreesToRadians(y)
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.duration = duration
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func rotate(z: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.timingFunction = timingFunction
        animation.toValue = degreesToRadians(z)
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.duration = duration
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func round(corners: CGFloat,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = corners
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func shadow(offset: CGSize,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "shadowOffset")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = offset
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func shadow(color: UIColor,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "shadowColor")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = color.cgColor
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func shadow(path: CGPath,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "shadowPath")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = path
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func shadow(radius: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "shadowRadius")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = radius
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func shadow(opacity: CGFloat,
                duration: CFTimeInterval,
                timingFunction : CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "shadowOpacity")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = opacity
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func opacity(to: CGFloat,
                 duration: CFTimeInterval,
                 timingFunction: CAMediaTimingFunction,
                 delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.timingFunction = timingFunction
        animation.duration = duration
        animation.toValue = to
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.beginTime = CACurrentMediaTime() + delay
        self.add(animation, forKey: nil)
    }
    func background(color: UIColor,
                    duration: CFTimeInterval,
                    timingFunction: CAMediaTimingFunction,
                    delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "backgroundColor")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = color.cgColor
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func border(color: UIColor,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "borderColor")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = color.cgColor
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func border(width: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "borderWidth")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = width
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func stroke(end: CGFloat,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.fromValue = 0
        animation.toValue = end
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func stroke(color: UIColor,
                duration: CFTimeInterval,
                timingFunction: CAMediaTimingFunction,
                delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "strokeColor")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.fromValue = 0
        animation.toValue = color.cgColor
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func line(width: CGFloat,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "lineWidth")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.fromValue = 0
        animation.toValue = width
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func position(z: CGFloat,
                  duration: CFTimeInterval,
                  timingFunction: CAMediaTimingFunction,
                  delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "zPosition")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = z
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    
    // MARK : only in CAGradientLayer
    func gradient(colors: [CGColor],
                  duration: CFTimeInterval,
                  timingFunction : CAMediaTimingFunction,
                  delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "colors")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = colors
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func gradient(location: [CGFloat],
                  duration: CFTimeInterval,
                  timingFunction: CAMediaTimingFunction,
                  delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "locations")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = location
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func start(point: CGPoint,
               duration: CFTimeInterval,
               timingFunction: CAMediaTimingFunction,
               delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "startPoint")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = point
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func end(point: CGPoint,
             duration: CFTimeInterval,
             timingFunction: CAMediaTimingFunction,
             delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "endPoint")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = point
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    
    // MAEK : only in CAShapeLayer
    func fill(color: UIColor,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "fillColor")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = color.cgColor
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func path(to: CGPath,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "path")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = to
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    func move(path: CGMutablePath,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.path = path
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    
    // MARK : only in CATextLayer
    func font(size: CGFloat,
              duration: CFTimeInterval,
              timingFunction: CAMediaTimingFunction,
              delay: CFTimeInterval){
        let animation = CABasicAnimation(keyPath: "fontSize")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.toValue = size
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    func foreground(color: UIColor,
                    duration: CFTimeInterval,
                    timingFunction: CAMediaTimingFunction,
                    delay: CFTimeInterval) {
        let animation = CABasicAnimation(keyPath: "foregroundColor")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.timingFunction = timingFunction
        animation.toValue = color.cgColor
        animation.duration = duration
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        self.add(animation, forKey: nil)
    }
    
    // SpringAnimation
    func springScale(x: CGFloat,
                     duration: CFTimeInterval,
                     damping: CGFloat,
                     velocity: CGFloat,
                     timingFunction: CAMediaTimingFunction,
                     delay: CFTimeInterval){
        let animation = CASpringAnimation(keyPath: "transform.scale.x")
        animation.duration = duration
        animation.timingFunction = timingFunction
        animation.damping = damping
        animation.initialVelocity = velocity
        animation.toValue = x
        animation.beginTime = CACurrentMediaTime() + delay
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.add(animation, forKey: nil)
    }
    
    // faster get & set essential properties
    var x: CGFloat{get{return frame.origin.x}set{frame.origin.x = newValue}}
    var y: CGFloat{get{return frame.origin.y}set{frame.origin.y = newValue}}
    var height: CGFloat{get{return frame.size.height}set{frame.size.height = newValue}}
    var width: CGFloat{get{return frame.size.width}set{frame.size.width = newValue}}
    
    // faster set border and shadow
    func border(color: CGColor, width: CGFloat){
        self.borderColor = color
        self.borderWidth = width
    }
    func shadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: CGFloat){
        self.shadowOffset = offset
        self.shadowColor = color.cgColor
        self.shadowRadius = radius
        self.shadowOpacity = Float(opacity)
    }
}

let easeIn01 = CAMediaTimingFunction(controlPoints: 0.47, 0, 0.745, 0.715)
let easeOut01 = CAMediaTimingFunction(controlPoints: 0.39, 0.575, 0.565, 1)
let easeInOut01 = CAMediaTimingFunction(controlPoints: 0.445, 0.05, 0.55, 0.95)
let easeIn02 = CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53)
let easeOut02 = CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)
let easeInOut02 = CAMediaTimingFunction(controlPoints: 0.455, 0.03, 0.515, 0.955)
let easeIn03 = CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19)
let easeOut03 = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)
let easeInOut03 = CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1)
let easeIn04 = CAMediaTimingFunction(controlPoints: 0.895, 0.03, 0.685, 0.22)
let easeOut04 = CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)
let easeInOut04 = CAMediaTimingFunction(controlPoints: 0.77, 0, 0.175, 1)
let easeIn05 = CAMediaTimingFunction(controlPoints: 0.755, 0.05, 0.855, 0.06)
let easeOut05 = CAMediaTimingFunction(controlPoints: 0.23, 1, 0.32, 1)
let easeInOut05 = CAMediaTimingFunction(controlPoints: 0.86, 0, 0.07, 1)
let easeIn06 = CAMediaTimingFunction(controlPoints: 0.95, 0.05, 0.795, 0.035)
let easeOut06 = CAMediaTimingFunction(controlPoints: 0.19, 1, 0.22, 1)
let easeInOut06 = CAMediaTimingFunction(controlPoints: 1, 0, 0, 1)
