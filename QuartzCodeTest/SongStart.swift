//
//  SongEnd.swift
//
//  Code generated using QuartzCode 1.38.4 on 01/12/2015.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class SongEnd: UIView {
    
    var layers : Dictionary<String, AnyObject> = [:]
    var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
    var updateLayerValueForCompletedAnimation : Bool = false
    
    var White : UIColor!
    var lightBlue : UIColor!
    
    //MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
        setupLayers()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupProperties()
        setupLayers()
    }
    
    
    
    func setupProperties(){
        self.White = UIColor.whiteColor()
        self.lightBlue = UIColor(red:0.702, green: 0.855, blue:0.929, alpha:1)
    }
    
    func setupLayers(){
        self.backgroundColor = UIColor(red:0.365, green: 0.643, blue:0.824, alpha:1)
        
        let Song = CATextLayer()
        Song.frame = CGRectMake(100.28, -11.81, 1230.26, 99.57)
        self.layer.addSublayer(Song)
        layers["Song"] = Song
        
        let Artist = CATextLayer()
        Artist.frame = CGRectMake(100, 88.76, 1230.26, 82.44)
        self.layer.addSublayer(Artist)
        layers["Artist"] = Artist
        
        resetLayerPropertiesForLayerIdentifiers(nil)
    }
    
    func resetLayerPropertiesForLayerIdentifiers(layerIds: [String]!){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        if layerIds == nil || layerIds.contains("Song"){
            let Song = layers["Song"] as! CATextLayer
            Song.anchorPoint   = CGPointMake(0, 0)
            Song.alignmentMode = kCAAlignmentLeft;
            Song.contentsScale = UIScreen.mainScreen().scale
            var SongAttributes = [NSFontAttributeName: UIFont(name:"AvenirNext-Bold", size:73)!,
                NSForegroundColorAttributeName: UIColor.whiteColor(),
                NSKernAttributeName: 1]
            var SongText       = "Song Title"
            var SongAttributedText = NSAttributedString(string: SongText, attributes: SongAttributes)
            Song.string = SongAttributedText
        }
        if layerIds == nil || layerIds.contains("Artist"){
            let Artist = layers["Artist"] as! CATextLayer
            Artist.anchorPoint   = CGPointMake(0, 0)
            Artist.alignmentMode = kCAAlignmentLeft;
            Artist.contentsScale = UIScreen.mainScreen().scale
            var ArtistAttributes = [NSFontAttributeName: UIFont(name:"AvenirNext-Regular", size:47)!,
                NSForegroundColorAttributeName: UIColor(red:0.702, green: 0.855, blue:0.929, alpha:1),
                NSKernAttributeName: 1]
            var ArtistText       = "Artist Name"
            var ArtistAttributedText = NSAttributedString(string: ArtistText, attributes: ArtistAttributes)
            Artist.string = ArtistAttributedText
        }
        
        CATransaction.commit()
    }
    
    //MARK: - Animation Setup
    
    func addSongStartAnimation(){
        addSongStartAnimationCompletionBlock(nil)
    }
    
    func addSongStartAnimationCompletionBlock(completionBlock: ((finished: Bool) -> Void)?){
        if completionBlock != nil{
            let completionAnim = CABasicAnimation(keyPath:"completionAnim")
            completionAnim.duration = 1
            completionAnim.delegate = self
            completionAnim.setValue("SongStart", forKey:"animId")
            completionAnim.setValue(false, forKey:"needEndAnim")
            layer.addAnimation(completionAnim, forKey:"SongStart")
            if let anim = layer.animationForKey("SongStart"){
                completionBlocks[anim] = completionBlock
            }
        }
        
        let fillMode : String = kCAFillModeForwards
        
        ////Song animation
        let SongPositionAnim            = CAKeyframeAnimation(keyPath:"position")
        SongPositionAnim.values         = [NSValue(CGPoint: CGPointMake(100, 350.771)), NSValue(CGPoint: CGPointMake(100, -0.574))]
        SongPositionAnim.keyTimes       = [0, 1]
        SongPositionAnim.duration       = 0.491
        SongPositionAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        
        let SongOpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
        SongOpacityAnim.values   = [0, 1]
        SongOpacityAnim.keyTimes = [0, 1]
        SongOpacityAnim.duration = 1
        
        let SongSongStartAnim : CAAnimationGroup = QCMethod.groupAnimations([SongPositionAnim, SongOpacityAnim], fillMode:fillMode)
        layers["Song"]?.addAnimation(SongSongStartAnim, forKey:"SongSongStartAnim")
        
        ////Artist animation
        let ArtistOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
        ArtistOpacityAnim.values         = [0, 0, 1]
        ArtistOpacityAnim.keyTimes       = [0, 0.642, 1]
        ArtistOpacityAnim.duration       = 1
        ArtistOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        
        let ArtistSongStartAnim : CAAnimationGroup = QCMethod.groupAnimations([ArtistOpacityAnim], fillMode:fillMode)
        layers["Artist"]?.addAnimation(ArtistSongStartAnim, forKey:"ArtistSongStartAnim")
    }
    
    func addSongFinishAnimation(){
        addSongFinishAnimationCompletionBlock(nil)
    }
    
    func addSongFinishAnimationCompletionBlock(completionBlock: ((finished: Bool) -> Void)?){
        if completionBlock != nil{
            let completionAnim = CABasicAnimation(keyPath:"completionAnim")
            completionAnim.duration = 0.5
            completionAnim.delegate = self
            completionAnim.setValue("SongFinish", forKey:"animId")
            completionAnim.setValue(false, forKey:"needEndAnim")
            layer.addAnimation(completionAnim, forKey:"SongFinish")
            if let anim = layer.animationForKey("SongFinish"){
                completionBlocks[anim] = completionBlock
            }
        }
        
        let fillMode : String = kCAFillModeForwards
        
        ////Song animation
        let SongOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
        SongOpacityAnim.values         = [1, 0]
        SongOpacityAnim.keyTimes       = [0, 1]
        SongOpacityAnim.duration       = 0.5
        SongOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        
        let SongSongFinishAnim : CAAnimationGroup = QCMethod.groupAnimations([SongOpacityAnim], fillMode:fillMode)
        layers["Song"]?.addAnimation(SongSongFinishAnim, forKey:"SongSongFinishAnim")
        
        ////Artist animation
        let ArtistOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
        ArtistOpacityAnim.values         = [1, 0]
        ArtistOpacityAnim.keyTimes       = [0, 1]
        ArtistOpacityAnim.duration       = 0.5
        ArtistOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        
        let ArtistSongFinishAnim : CAAnimationGroup = QCMethod.groupAnimations([ArtistOpacityAnim], fillMode:fillMode)
        layers["Artist"]?.addAnimation(ArtistSongFinishAnim, forKey:"ArtistSongFinishAnim")
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
        if identifier == "SongStart"{
            QCMethod.updateValueFromPresentationLayerForAnimation((layers["Song"] as! CALayer).animationForKey("SongSongStartAnim"), theLayer:(layers["Song"] as! CALayer))
            QCMethod.updateValueFromPresentationLayerForAnimation((layers["Artist"] as! CALayer).animationForKey("ArtistSongStartAnim"), theLayer:(layers["Artist"] as! CALayer))
        }
        else if identifier == "SongFinish"{
            QCMethod.updateValueFromPresentationLayerForAnimation((layers["Song"] as! CALayer).animationForKey("SongSongFinishAnim"), theLayer:(layers["Song"] as! CALayer))
            QCMethod.updateValueFromPresentationLayerForAnimation((layers["Artist"] as! CALayer).animationForKey("ArtistSongFinishAnim"), theLayer:(layers["Artist"] as! CALayer))
        }
    }
    
    func removeAnimationsForAnimationId(identifier: String){
        if identifier == "SongStart"{
            (layers["Song"] as! CALayer).removeAnimationForKey("SongSongStartAnim")
            (layers["Artist"] as! CALayer).removeAnimationForKey("ArtistSongStartAnim")
        }
        else if identifier == "SongFinish"{
            (layers["Song"] as! CALayer).removeAnimationForKey("SongSongFinishAnim")
            (layers["Artist"] as! CALayer).removeAnimationForKey("ArtistSongFinishAnim")
        }
    }
    
    func removeAllAnimations(){
        for layer in layers.values{
            (layer as! CALayer).removeAllAnimations()
        }
    }
    
}
