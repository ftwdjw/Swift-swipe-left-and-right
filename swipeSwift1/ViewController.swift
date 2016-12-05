//
//  ViewController.swift
//  swipeSwift1
//
//  Created by John Mac on 12/4/16.
//  Copyright © 2016 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var testView: UIView!
    
    
    
     //initialize left and right UI swipr gesture recognizers
     let leftSwipe = UISwipeGestureRecognizer()
     let rightSwipe = UISwipeGestureRecognizer()
    let upSwipe = UISwipeGestureRecognizer()
    let downSwipe = UISwipeGestureRecognizer()
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testView.addGestureRecognizer(leftSwipe)
        leftSwipe.direction = .left
        
         testView.addGestureRecognizer(rightSwipe)
        rightSwipe.direction = .right
        
        testView.addGestureRecognizer(upSwipe)
        upSwipe.direction = .up
        
        testView.addGestureRecognizer(downSwipe)
        downSwipe.direction = .down
        
        testView.isUserInteractionEnabled  = true
        
        leftSwipe.addTarget(self, action: #selector(ViewController.swipedViewLeft))
        rightSwipe.addTarget(self, action: #selector(ViewController.swipedViewRight))
         upSwipe.addTarget(self, action: #selector(ViewController.swipedViewUp))
         downSwipe.addTarget(self, action: #selector(ViewController.swipedViewDown))
        
        print("view did load")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func swipedViewLeft(){
        
                print("Swipe Left")
                let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped left", preferredStyle: UIAlertControllerStyle.alert)
                tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                self.present(tapAlert, animated: true, completion: nil)
               
               
            }
            
          func swipedViewRight(){
                print("Swipe Right")
                let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped right", preferredStyle: UIAlertControllerStyle.alert)
                tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                self.present(tapAlert, animated: true, completion: nil)
           
            }
    
    func swipedViewUp(){
        print("Swipe Up")
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped up", preferredStyle: UIAlertControllerStyle.alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(tapAlert, animated: true, completion: nil)
        
    }
    func swipedViewDown(){
        print("Swipe Down")
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped down", preferredStyle: UIAlertControllerStyle.alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(tapAlert, animated: true, completion: nil)
        
    }
    
    
 
    


}

