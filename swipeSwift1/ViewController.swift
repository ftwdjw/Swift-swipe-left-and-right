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
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testView.addGestureRecognizer(leftSwipe)
        leftSwipe.direction = .left
        
         testView.addGestureRecognizer(rightSwipe)
        rightSwipe.direction = .right
        
        testView.isUserInteractionEnabled  = true
        
        leftSwipe.addTarget(self, action: #selector(ViewController.swipedViewLeft))
        rightSwipe.addTarget(self, action: #selector(ViewController.swipedViewRight))
        
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
        
        
 
    


}

