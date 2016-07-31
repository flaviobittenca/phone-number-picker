//
//  ViewController.swift
//  PhoneNumberPickerExample
//
//  Created by Lucas Farah on 3/28/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PhoneNumberViewControllerDelegate {
    @IBOutlet var but: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    //let but = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
    but.setTitle("Phone Number", for: UIControlState())
    but.setTitleColor(UIColor.black(), for: UIControlState())
    //but.addTarget(self, action: Selector("present:"), for: .touchUpInside)
    //view.addSubview(but)
  }
    @IBAction func myAction(_ sender: AnyObject) {
        present()
    }

  
  func present()
  {
    let phoneNumberViewController = PhoneNumberViewController.standardController()
    phoneNumberViewController.delegate = self
    
    navigationController?.pushViewController(phoneNumberViewController, animated: true)
  }
  
  func phoneNumberViewControllerDidCancel(_ phoneNumberViewController: PhoneNumberViewController) {
    self.navigationController?.popViewController(animated: true)
    print("canceled")
  }
  
  func phoneNumberViewController(_ phoneNumberViewController: PhoneNumberViewController, didEnterPhoneNumber phoneNumber: String) {
    self.navigationController?.popViewController(animated: true)
    print("phone number: \(phoneNumber)")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

