//
//  voteMeter.swift
//
//  Code generated using QuartzCode 1.38.4 on 03/12/2015.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class VoteMeter: UIView {
    
    var layers : Dictionary<String, AnyObject> = [:]
    var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
    var updateLayerValueForCompletedAnimation : Bool = false
    
    var White : UIColor!
    var LightGrey : UIColor!
    var DarkestBlue : UIColor!
    var Green : UIColor!
    var DarkBlue : UIColor!
    var MediumBlue : UIColor!
    
    //MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
        setupLayers()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupProperties()
        setupLayers()
    }
    
    
    
    func setupProperties() {
        self.White = UIColor.whiteColor()
        self.LightGrey = UIColor(red:0.702, green: 0.855, blue:0.929, alpha:1)
        self.DarkestBlue = UIColor(red:0.00784, green: 0.157, blue:0.412, alpha:1)
        self.Green = UIColor(red:0, green: 0.773, blue:0.722, alpha:1)
        self.DarkBlue = UIColor(red:0, green: 0.271, blue:0.608, alpha:1)
        self.MediumBlue = UIColor(red:0.282, green: 0.706, blue:0.91, alpha:1)
    }
    
    func setupLayers(){
        self.backgroundColor = UIColor(red:0.0488, green: 0.087, blue:0.111, alpha:0.5)
        
        let Meter = CALayer()
        Meter.frame = CGRectMake(-1200, -800, 1200, 800)
        Meter.backgroundColor = UIColor.blueColor().CGColor
        self.layer.addSublayer(Meter)
        layers["Meter"] = Meter
        
        let meterLevel_ = CAShapeLayer()
        meterLevel_.frame = CGRectMake(0, 407.64, 170, 40)
        meterLevel_.path = meterLevel_Path().CGPath;
        Meter.addSublayer(meterLevel_)
        layers["meterLevel_"] = meterLevel_
        
        let meterLevel_2 = CAShapeLayer()
        meterLevel_2.frame = CGRectMake(0, 362.64, 170, 40)
        meterLevel_2.path = meterLevel_2Path().CGPath;
        Meter.addSublayer(meterLevel_2)
        layers["meterLevel_2"] = meterLevel_2
        
        let meterLevel_3 = CAShapeLayer()
        meterLevel_3.frame = CGRectMake(0, 318.64, 170, 40)
        meterLevel_3.path = meterLevel_3Path().CGPath;
        Meter.addSublayer(meterLevel_3)
        layers["meterLevel_3"] = meterLevel_3
        
        let meterLevel_4 = CAShapeLayer()
        meterLevel_4.frame = CGRectMake(0, 270.69, 170, 40)
        meterLevel_4.path = meterLevel_4Path().CGPath;
        Meter.addSublayer(meterLevel_4)
        layers["meterLevel_4"] = meterLevel_4
        
        let meterLevel_5 = CAShapeLayer()
        meterLevel_5.frame = CGRectMake(0, 225.69, 170, 40)
        meterLevel_5.path = meterLevel_5Path().CGPath;
        Meter.addSublayer(meterLevel_5)
        layers["meterLevel_5"] = meterLevel_5
        
        let meterLevel_6 = CAShapeLayer()
        meterLevel_6.frame = CGRectMake(0, 180.69, 170, 40)
        meterLevel_6.path = meterLevel_6Path().CGPath;
        Meter.addSublayer(meterLevel_6)
        layers["meterLevel_6"] = meterLevel_6
        
        let meterLevel_7 = CAShapeLayer()
        meterLevel_7.frame = CGRectMake(0, 135.69, 170, 40)
        meterLevel_7.path = meterLevel_7Path().CGPath;
        Meter.addSublayer(meterLevel_7)
        layers["meterLevel_7"] = meterLevel_7
        
        let meterLevel_8 = CAShapeLayer()
        meterLevel_8.frame = CGRectMake(0, 90.69, 170, 40)
        meterLevel_8.path = meterLevel_8Path().CGPath;
        Meter.addSublayer(meterLevel_8)
        layers["meterLevel_8"] = meterLevel_8
        
        let meterLevel_9 = CAShapeLayer()
        meterLevel_9.frame = CGRectMake(0, 45.69, 170, 40)
        meterLevel_9.path = meterLevel_9Path().CGPath;
        Meter.addSublayer(meterLevel_9)
        layers["meterLevel_9"] = meterLevel_9
        
        let meterLevel_10 = CAShapeLayer()
        meterLevel_10.frame = CGRectMake(0, 0, 170, 40)
        meterLevel_10.path = meterLevel_10Path().CGPath;
        Meter.addSublayer(meterLevel_10)
        layers["meterLevel_10"] = meterLevel_10
        
        resetLayerPropertiesForLayerIdentifiers(nil)
    }
    
    func resetLayerPropertiesForLayerIdentifiers(layerIds: [String]!){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        let Meter = layers["Meter"] as! CALayer
        Meter.hidden = false
        
        if layerIds == nil || layerIds.contains("Meter"){
            let Meter = layers["Meter"] as! CALayer
//            Meter.hidden = true
        }
        if layerIds == nil || layerIds.contains("meterLevel_"){
            let meterLevel_ = layers["meterLevel_"] as! CAShapeLayer
            meterLevel_.anchorPoint = CGPointMake(0, 0)
            meterLevel_.opacity     = 0.3
            meterLevel_.fillColor   = self.DarkestBlue.CGColor
            meterLevel_.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_2"){
            let meterLevel_2 = layers["meterLevel_2"] as! CAShapeLayer
            meterLevel_2.anchorPoint = CGPointMake(0, 0)
            meterLevel_2.opacity     = 0.3
            meterLevel_2.fillColor   = self.DarkestBlue.CGColor
            meterLevel_2.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_3"){
            let meterLevel_3 = layers["meterLevel_3"] as! CAShapeLayer
            meterLevel_3.anchorPoint = CGPointMake(0, 0)
            meterLevel_3.opacity     = 0.3
            meterLevel_3.fillColor   = self.DarkestBlue.CGColor
            meterLevel_3.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_4"){
            let meterLevel_4 = layers["meterLevel_4"] as! CAShapeLayer
            meterLevel_4.anchorPoint = CGPointMake(0, 0)
            meterLevel_4.opacity     = 0.3
            meterLevel_4.fillColor   = self.DarkestBlue.CGColor
            meterLevel_4.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_5"){
            let meterLevel_5 = layers["meterLevel_5"] as! CAShapeLayer
            meterLevel_5.anchorPoint = CGPointMake(0, 0)
            meterLevel_5.opacity     = 0.3
            meterLevel_5.fillColor   = self.DarkestBlue.CGColor
            meterLevel_5.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_6"){
            let meterLevel_6 = layers["meterLevel_6"] as! CAShapeLayer
            meterLevel_6.anchorPoint = CGPointMake(0, 0)
            meterLevel_6.opacity     = 0.3
            meterLevel_6.fillColor   = self.DarkestBlue.CGColor
            meterLevel_6.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_7"){
            let meterLevel_7 = layers["meterLevel_7"] as! CAShapeLayer
            meterLevel_7.anchorPoint = CGPointMake(0, 0)
            meterLevel_7.opacity     = 0.3
            meterLevel_7.fillColor   = self.DarkestBlue.CGColor
            meterLevel_7.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_8"){
            let meterLevel_8 = layers["meterLevel_8"] as! CAShapeLayer
            meterLevel_8.anchorPoint = CGPointMake(0, 0)
            meterLevel_8.opacity     = 0.3
            meterLevel_8.fillColor   = self.DarkestBlue.CGColor
            meterLevel_8.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_9"){
            let meterLevel_9 = layers["meterLevel_9"] as! CAShapeLayer
            meterLevel_9.anchorPoint = CGPointMake(0, 0)
            meterLevel_9.opacity     = 0.3
            meterLevel_9.fillColor   = UIColor(red:0.00784, green: 0.157, blue:0.412, alpha:1).CGColor
            meterLevel_9.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("meterLevel_10"){
            let meterLevel_10 = layers["meterLevel_10"] as! CAShapeLayer
            meterLevel_10.anchorPoint = CGPointMake(0, 0)
            meterLevel_10.opacity     = 0.3
            meterLevel_10.fillColor   = self.DarkestBlue.CGColor
            meterLevel_10.lineWidth   = 0
        }
        
        CATransaction.commit()
    }
    
    //MARK: - Animation Setup
    
    func addMainAnimation(){
        addMainAnimationCompletionBlock(nil)
    }
    
    func addMainAnimationCompletionBlock(completionBlock: ((finished: Bool) -> Void)?){
        if completionBlock != nil{
            let completionAnim = CABasicAnimation(keyPath:"completionAnim")
            completionAnim.duration = 25
            completionAnim.delegate = self
            completionAnim.setValue("Main", forKey:"animId")
            completionAnim.setValue(false, forKey:"needEndAnim")
            layer.addAnimation(completionAnim, forKey:"Main")
            if let anim = layer.animationForKey("Main"){
                completionBlocks[anim] = completionBlock
            }
        }
        
        let fillMode : String = kCAFillModeForwards
        
        ////Meter animation
        let MeterTransformAnim            = CABasicAnimation(keyPath:"transform")
        MeterTransformAnim.fromValue      = NSValue(CATransform3D: CATransform3DMakeTranslation(0, 550, 0));
        MeterTransformAnim.duration       = 9
        MeterTransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
        MeterTransformAnim.setValue(0.05, forKeyPath:"instanceDelay")
        MeterTransformAnim.setValue(1, forKeyPath:"instanceOrder")
        
        let MeterOpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
        MeterOpacityAnim.values   = [0, 0.33, 0.33, 0]
        MeterOpacityAnim.keyTimes = [0, 0.04, 0.98, 1]
        MeterOpacityAnim.duration = 25
        
        let MeterMainAnim : CAAnimationGroup = QCMethod.groupAnimations([MeterTransformAnim, MeterOpacityAnim], fillMode:kCAFillModeBoth, forEffectLayer:true, sublayersCount:10)
        QCMethod.addSublayersAnimation(MeterMainAnim, key:"MeterMainAnim", layer:layers["Meter"] as! CALayer)
    }
    
    //MARK: - Animation Cleanup
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool){
        if let completionBlock = completionBlocks[anim]{
            completionBlocks.removeValueForKey(anim)
            if (flag && updateLayerValueForCompletedAnimation) || anim.valueForKey("needEndAnim") as! Bool{
                updateLayerValuesForAnimationId(anim.valueForKey("animId") as! String)
                removeAnimationsForAnimationId(anim.valueForKey("animId") as! String)
            }
            completionBlock(flag)
        }
    }
    
    func updateLayerValuesForAnimationId(identifier: String){
        if identifier == "Main"{
            QCMethod.updateValueFromPresentationLayerForAnimation((layers["Meter"] as! CALayer).animationForKey("MeterMainAnim"), theLayer:(layers["Meter"] as! CALayer))
        }
    }
    
    func removeAnimationsForAnimationId(identifier: String){
        if identifier == "Main"{
            (layers["Meter"] as! CALayer).removeAnimationForKey("MeterMainAnim")
        }
    }
    
    func removeAllAnimations(){
        for layer in layers.values{
            (layer as! CALayer).removeAllAnimations()
        }
    }
    
    //MARK: - Bezier Path
    
    func meterLevel_Path() -> UIBezierPath{
        let meterLevel_Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_Path;
    }
    
    func meterLevel_2Path() -> UIBezierPath{
        let meterLevel_2Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_2Path;
    }
    
    func meterLevel_3Path() -> UIBezierPath{
        let meterLevel_3Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_3Path;
    }
    
    func meterLevel_4Path() -> UIBezierPath{
        let meterLevel_4Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_4Path;
    }
    
    func meterLevel_5Path() -> UIBezierPath{
        let meterLevel_5Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_5Path;
    }
    
    func meterLevel_6Path() -> UIBezierPath{
        let meterLevel_6Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_6Path;
    }
    
    func meterLevel_7Path() -> UIBezierPath{
        let meterLevel_7Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_7Path;
    }
    
    func meterLevel_8Path() -> UIBezierPath{
        let meterLevel_8Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_8Path;
    }
    
    func meterLevel_9Path() -> UIBezierPath{
        let meterLevel_9Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_9Path;
    }
    
    func meterLevel_10Path() -> UIBezierPath{
        let meterLevel_10Path = UIBezierPath(roundedRect:CGRectMake(0, 0, 170, 40), cornerRadius:3)
        return meterLevel_10Path;
    }
    
    
}
