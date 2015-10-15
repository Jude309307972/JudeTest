//
//  ViewController.swift
//  GitHubTest
//
//  Created by 徐遵成 on 15/10/4.
//  Copyright © 2015年 Jude. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        self._initTextField()
    }
    
    func _initTextField() {
        let textField = UITextField(frame: CGRectMake(100, 100, 200, 30))
        textField.backgroundColor = UIColor.redColor()
        textField.tag = 100
        textField.delegate = self;
        self.view.addSubview(textField)
        
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.font = UIFont.boldSystemFontOfSize(10)
        textField.textColor = UIColor.greenColor()
        textField.textAlignment = NSTextAlignment.Center
        
        textField.autocapitalizationType = UITextAutocapitalizationType.Words
        textField.autocorrectionType = UITextAutocorrectionType.No
        
        textField.placeholder = "请输入登录邮箱"
        textField.returnKeyType = UIReturnKeyType.Go
        textField.secureTextEntry = true
        
        textField.keyboardType = UIKeyboardType.NumberPad
        textField.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        textField.becomeFirstResponder()
        
        let btn = UIButton(type: UIButtonType.ContactAdd)
        btn.frame = CGRectMake(0, 100, 50, 50)
        btn.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    func btnClick(btn: UIButton) {
        let textField = self.view.viewWithTag(100) as! UITextField
         textField.resignFirstResponder()
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("将要开始编辑")
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("over")
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func _initLabel(){
        let textlabel = UILabel(frame: CGRectMake(10, 30, 100, 150))
        textlabel.backgroundColor = UIColor.grayColor()
        textlabel.text = "good morning haha hehe hoho"
        
        textlabel.font = UIFont.boldSystemFontOfSize(14)
        textlabel.font = UIFont.systemFontOfSize(14)
        
        let familyNames:[String] = UIFont.familyNames()
        print(familyNames)
        textlabel.font = UIFont(name: "bodoni 72 Oldstyle", size: 15)
        
        textlabel.textColor = UIColor.orangeColor()
        textlabel.textAlignment = NSTextAlignment.Center
        textlabel.numberOfLines = 0
        
        self.view.addSubview(textlabel)
    }
    
    func _initButton() {
        let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(10, 180, 90, 144)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("hehe", forState: UIControlState.Normal)
        button.setTitle("haha", forState: UIControlState.Highlighted)
        
        button.titleLabel?.font = UIFont.systemFontOfSize(10)
        button.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        let image1 = UIImage(named: "back_on.png")
        let image2 = UIImage(named: "back_on_black.png")
        
        button.setImage(image1, forState: UIControlState.Normal)
        button.setImage(image2, forState: UIControlState.Highlighted)
        
        button.titleEdgeInsets = UIEdgeInsetsMake(0, -90, 00, 0)
        button.setTitle("选中", forState: UIControlState.Selected)
        
        button.selected = true
        
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

