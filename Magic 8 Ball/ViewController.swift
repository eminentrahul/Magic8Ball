//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rahul Ravi Prakash on 08/06/18.
//  Copyright © 2018 Rahul Ravi Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
	
	var randomBallNumber = 0

	@IBOutlet var BallImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		nenwBallImage()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func askButtonPressed(_ sender: Any) {
		nenwBallImage()
	}
	
	func nenwBallImage(){
		randomBallNumber = Int(arc4random_uniform(5))
		BallImageView.image = UIImage(named: ballImageArray[randomBallNumber])
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		nenwBallImage()
	}
	
}

