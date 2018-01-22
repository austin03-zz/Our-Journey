//
//  MainTabController.swift
//  Our Journey
//
//  Created by Austin Elliott on 1/21/18.
//  Copyright © 2018 Austin Elliott. All rights reserved.
//

import Foundation
import UIKit

class MainTabController : UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		UIGraphicsBeginImageContext(self.view.frame.size)
		UIImage(named: "Background")?.draw(in: self.view.bounds)
		let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		self.view.backgroundColor = UIColor(patternImage: image)
		
		let blur = UIBlurEffect(style: UIBlurEffectStyle.dark)
		let blurView = UIVisualEffectView(effect: blur)
		blurView.frame = self.tabBar.bounds
		blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		self.tabBar.addSubview(blurView)
		self.tabBar.sendSubview(toBack: blurView)
	}
}
