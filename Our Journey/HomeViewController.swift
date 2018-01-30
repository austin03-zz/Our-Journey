//
//  HomeViewController.swift
//  Our Journey
//
//  Created by Austin Elliott on 1/1/18.
//  Copyright © 2018 Austin Elliott. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
	
	@IBOutlet var dateTimeLabel: UILabel!
	
	var num = 0
	var timer = Timer()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Setting up custom background
		UIGraphicsBeginImageContext(self.view.frame.size)
		UIImage(named: "Background")?.draw(in: self.view.bounds)
		let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		self.view.backgroundColor = UIColor (patternImage: image)
		
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.updateDateTimeLabel)), userInfo: nil, repeats: true)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@objc public func updateDateTimeLabel() {
		var passDateComponents = DateComponents()
		passDateComponents.year = 2014
		passDateComponents.month = 9
		passDateComponents.day = 11
		passDateComponents.hour = 22
		passDateComponents.minute = 0
		passDateComponents.second = 0
		
		let passDate = Calendar.current.date(from: passDateComponents)
		
		let dateComponentsElapsed = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: passDate!, to: Date())
		
		let  dateElapsed = Calendar.current.date(from: dateComponentsElapsed)
		
		let timeFormatter = DateFormatter()
		timeFormatter.dateFormat = "yy:MM:dd hh:mm:ss"
		
		self.dateTimeLabel.text = timeFormatter.string(from: dateElapsed!)
	}
}
