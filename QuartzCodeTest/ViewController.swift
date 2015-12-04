//
//  ViewController.swift
//  QuartzCodeTest
//
//  Created by Yvette Cook on 01/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var voteTrackInfoView: VoteTrackInfoView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func animate(sender: AnyObject) {
        voteTrackInfoView.addVoteAAnimationCompletionBlock { (finished) -> Void in
            print("Animation finished")
        }
        
    }

}

