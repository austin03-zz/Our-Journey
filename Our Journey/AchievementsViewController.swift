//
//  AchievementViewController.swift
//  Our Journey
//
//  Created by Austin Elliott on 1/7/18.
//  Copyright © 2018 Austin Elliott. All rights reserved.
//

import Foundation
import UIKit

class AchievementsViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Setting up custom background
		UIGraphicsBeginImageContext(self.view.frame.size)
		UIImage(named: "Background")?.draw(in: self.view.bounds)
		let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		self.view.backgroundColor = UIColor (patternImage: image)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
