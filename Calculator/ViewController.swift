//
//  ViewController.swift
//  Calculator
//
//  Created by Patrick Boutet on 2015-02-04.
//  Copyright (c) 2015 Pats Projects. All rights reserved.
//

import UIKit

//Define a class, keyword: "calss", Name of the Class,
//and inherits from ": UIViewController".
//swift is single inheritance.
class ViewController: UIViewController {
    //in here put all instance variables and methods of this class.

    //instance variable is called a propertie in swift.
    
    //Make a connection between the Viewcontroller and the view.
    //Outlet is an instance variable that points to a thing in the UI.
    
    //"@IBOutlet" is not swift, it's xcode markup
    //"weak" is part of memory management, it's not garbage collection, it's reference counting.
    //"var display: UILabel!" is swift proper. This instance variable is a pointer to the UI object. 
    //var is short for variable, display is the name, and ": UILable" is the type of the instance variable. The "!" point is ....
    @IBOutlet weak var display: UILabel!

    //in swift all properties need to be initialized when they are declared.
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    
    
    //Instance Method
    //you start by control dragging a UI object into the code and selecting the "connection" to be "action" this indicates to make a method instead of a instance variable.
    //the default type is usually set as "anyObject" always switch this to the specific, eg. UIButton.
    //argument, what argument you want to send if you want one.
    //"@IBAction" is like the previous, its xcode markup
    //"func" = function/mehtod, appendDigit = name, arguments go in brackets. (sender: UIButton) sender is the name and ": UIButton" is the type.
    @IBAction func appendDigit(sender: UIButton) {
       
        //declare a local variable to represent the digit that was pressed. "let" is the same as var but it is a constant, it gets assigned initially and won't ever change after that.
        //swift is very strongly typed, but it is very good at type inference. So "digit" is infering the type from sender.currenTitle. 
        //the type "optional" is a "?", it can have 2 values, either not set represented by nil or something, the type of that something is what is to the left of the "?", so digit is an optional string, it's an optional that can be a string.*** it becomes this because sender.currentTitle returns a optional string. To get the string in the optional you unwrap it with an "!" point. So digit will now be a string instead of an optional.
        let digit = sender.currentTitle!
        println("digit = \(digit)")
        
        //now lets append the digit to the display
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        }
        else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
        
    }
    
    

}

