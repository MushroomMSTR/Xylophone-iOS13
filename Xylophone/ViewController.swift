//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	var player: AVAudioPlayer?
	
	func playSound(soundName: String) {
		guard let path = Bundle.main.path(forResource: soundName, ofType:"wav") else {
			print("Sound file \(soundName) not found")
			return
		}
		let url = URL(fileURLWithPath: path)
		
		do {
			player = try AVAudioPlayer(contentsOf: url)
			player?.play()
			
		} catch let error {
			print("Error playing sound: \(error.localizedDescription)")
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func keyPressed(_ sender: UIButton) {
		playSound(soundName: "C")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedD(_ sender: UIButton) {
		playSound(soundName: "D")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedE(_ sender: UIButton) {
		playSound(soundName: "E")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedF(_ sender: UIButton) {
		playSound(soundName: "F")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedG(_ sender: UIButton) {
		playSound(soundName: "G")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedA(_ sender: UIButton) {
		playSound(soundName: "A")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
	@IBAction func keyPressedB(_ sender: UIButton) {
		playSound(soundName: "B")
		sender.alpha = 0.5
		UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
			   sender.alpha = 1.0
		   }, completion: nil)
	}
}


